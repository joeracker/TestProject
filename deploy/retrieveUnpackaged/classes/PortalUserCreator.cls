global class PortalUserCreator{
  @future
  global static void createPortalUser(Set<Id> echoObjIds){
    System.debug('---------------------Inside the PortalUserCreator ');
    Id prmUK;
    Id prmUS;
    
    Set<Id> profIds = new Set<Id>();
    List<Profile> portalProf = new List<Profile>();
    
    //retrieve PRM UK and US profiles
    portalProf = [Select Id, Name From Profile Where Name = 'Partner PRM - UK' Or Name = 'Partner PRM - US'];
    for(Profile p :portalProf){
      profIds.add(p.Id);
      if(p.Name == 'Partner PRM - UK'){
        prmUK = p.Id;
      }
      else if(p.Name == 'Partner PRM - US'){
        prmUS = p.Id;
      }
    }
    //retrieve echosign object details for reference
    List<echosign_dev1__SIGN_Agreement__c> echoObjList = [Select id, echosign_dev1__Recipient__c, echosign_dev1__Account__c, Territory__c
                                  From   echosign_dev1__SIGN_Agreement__c
                                  Where  id IN :echoObjIds
                                   And   echosign_dev1__Account__c   != null
                                   And   echosign_dev1__Recipient__c != null
                                   ];
    if(echoObjList.size() > 0){
  
      Map<Id, echosign_dev1__SIGN_Agreement__c>   echoObjMap    = new Map<Id, echosign_dev1__SIGN_Agreement__c>();
      Map<Id, Id>                  accountRoleMap  = new Map<Id, Id>();
      Map<Id, Contact>              contactMap    = new Map<Id, Contact>();
      Map<Id, Boolean>              userVersionMap  = new Map<Id, Boolean>();
      
      Set<Id> conIds = new Set<Id>(); 
      Set<Id> accIds = new Set<Id>();
      
      List<User>     userList          = new List<User>();
      List<User>    newPortalUserList  = new List<User>();
      List<Contact>   contactList        = new List<Contact>();
      List<Profile>   accProfileList     = new List<Profile>();
      List<UserRole>  accRoleList        = new List<UserRole>();
      
      for(echosign_dev1__SIGN_Agreement__c e:echoObjList){
        echoObjMap.put(e.echosign_dev1__Recipient__c, e);
        conIds.add(e.echosign_dev1__Recipient__c);
      }
      
      userList = [Select Id, ContactId From User Where ContactId IN :conIds And ProfileId IN :profIds];
        
      for(User u: userList){ // checks if the Partner Account already have a Partner User. 
        if(echoObjMap.get(u.ContactId) != null){
          echoObjMap.remove(u.ContactId);
        }
      }
      
      conIds.clear(); // clear conIds to remove records where partner user already exists.
      
      for(String c :echoObjMap.keySet()){
        accIds.add(echoObjMap.get(c).echosign_dev1__Account__c);
        conIds.add(c); // re-populate conIds this time with contacts having no partner users yet.
        if(echoObjMap.get(c).Territory__c != 'EMEA/Benelux'){ // if this is true then user is a US portal user.
          userVersionMap.put(c, true);
        }
        else{
          userVersionMap.put(c, false);
        }
      }
      
      if(accIds.size() > 0){ // retrieve User Role for partners, defaulting it to the Partner User role.
        accRoleList = [Select Id, PortalAccountId, Name 
                 From   UserRole 
                 Where  PortalAccountId IN :accIds 
                 And     Name Like '%Partner User%'
                ];
        for(UserRole usrle :accRoleList){
          accountRoleMap.put(usrle.PortalAccountId, usrle.Id);
        }
      }
      
      if(conIds.size() > 0){ // retrieve necessary contact details for user creation reference
        contactList = [Select Id, FirstName, LastName, Email, AccountId
                 From   Contact
                 Where  Id IN :conIds
                ];
        for(Contact c: contactList){
          contactMap.put(c.Id, c);
        }
      }
      system.debug('****');
      system.debug('PRM UK ' + prmUK);
      system.debug('PRM US ' + prmUS);
      system.debug('ROLE MAP ' + accountRoleMap);
      system.debug('CONT MAP ' + contactMap);
      system.debug('VERS MAP ' + userVersionMap);
      newPortalUserList = PortalUserCreatorUtil.builUserList(prmUK, prmUS, accountRoleMap, contactMap, userVersionMap);
      
      if(newPortalUserList.size() > 0){
        system.debug('**FOR INSERT ' + newPortalUserList);
        
        //for error handling/emailing
        Map<Integer, User> saveMap = new Map<Integer, User>();
        for(Integer i=0; i<newPortalUserList.size();i++){
          saveMap.put(i, newPortalUserList[i]);
        }
        
        // to allow partial processing
        Database.SaveResult[] result = Database.insert(newPortalUserList, false);
        system.debug('**SAVE RESULT ' + result);
        
        // log errors / success
        
        String errorStr = '';
        String succStr  = '';
        
        Integer succInt = 0;
         
        for(Integer i=0; i<result.size();i++){
          if(!result[i].isSuccess()){
            errorStr +=  saveMap.get(i).username + ' (' + result[i].getErrors()[0].getMessage() + ') <br/><br/>'; 
          }
          else{
            succStr += saveMap.get(i).username + ' <br/><br/>';
            succInt++;
          }
        }
        
        system.debug('ERR LOG ' + errorStr);
        system.debug('SUCC COUNT ' + succInt);
        
        if(errorStr != ''){
          emailErrors(errorStr);
        }
        
        if(succInt > 0){
          emailSuccess(succStr, succInt, result.size());
        }
      } 
    }
  }
  
  static void emailErrors(String errStr){
    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
    
    //String[] toAddresses = new String[] {'knoceda@globalone.com'};
    
    //** add these two before production deployment 'tbuchhol@rackspace.com','stacey.johnson@rackspace.com'
    String[] toAddresses = new String[] {'tbuchhol@rackspace.com'};
    
    mail.setEmailPriority('High');
    mail.setToAddresses(toAddresses);
    mail.setSenderDisplayName('Partner Portal User Batch Process');
    mail.setSubject('Failed to create user records.');
    mail.setPlainTextBody('Failed  to create user records for the following partners: <br/><br/>' + errStr);
    mail.setHtmlBody('Failed  to create user records for the following partners: <br/><br/>' + errStr);

    Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
  }
  
  static void emailSuccess(String succStr, Integer succInt, Integer resSize){
    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
    
    //String[] toAddresses = new String[] {'knoceda@globalone.com'};
    
    //** add these two before production deployment 'tbuchhol@rackspace.com','stacey.johnson@rackspace.com'
    String[] toAddresses = new String[] {'tbuchhol@rackspace.com'};
    
    mail.setEmailPriority('Normal');
    mail.setToAddresses(toAddresses);
    mail.setSenderDisplayName('Partner Portal User Batch Process');
    mail.setSubject('Portal user records successfully created.');
    mail.setPlainTextBody(succInt + ' of '  + resSize + ' partner portal users were successfully created. <br/><br/>' + succStr);
    mail.setHtmlBody(succInt + ' of '  + resSize + ' partner portal users were successfully created. <br/><br/>' + succStr);
    
    system.debug('SUCC MAIL ' + mail);
    Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
  }
}