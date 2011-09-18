/*
    R Angeles 06062011 - Updated code to make callout to PortalUserCreator only.
*/

trigger ContactEnableForPortal on Contact (after update) {
  /*
  Set<Id> profIds = new Set<Id>();
  Set<Id> conIds = new Set<Id>();
  Set<Id> contIds = new Set<Id>();
  Set<Id> userConIds = new Set<Id>();
  Boolean IPartner;
  
  List<Profile> portalProf = new List<Profile>();
  List<User> userList = new List<User>(); 
  
  List<Contact> contactList = new List<Contact>();
  
  //List<echosign_dev1__SIGN_Agreement__c> echoObjList = new List<echosign_dev1__SIGN_Agreement__c>();
  //Map<Id, echosign_dev1__SIGN_Agreement__c> echoObjMap = new Map<Id, echosign_dev1__SIGN_Agreement__c>();
  
  for(Contact c:Trigger.new){
        
        conIds.add(c.Id);
  }
  
  portalProf = [Select Id From Profile Where Name = 'Partner PRM - UK' Or Name = 'Partner PRM - US'];
  
  for(Profile p:portalProf){
    profIds.add(p.Id);
  }
  
  contactList = [Select id,Name,Email,IsPartner__c From Contact Where Id IN : conIds];
  
  //echoObjList = [Select id, echosign_dev1__Recipient__c, echosign_dev1__Account__c, Territory__c
           //From   echosign_dev1__SIGN_Agreement__c
           //Where  echosign_dev1__Recipient__c IN :conIds
           //And    echosign_dev1__Account__c != null];

  //for(echosign_dev1__SIGN_Agreement__c e :echoObjList){
    //echoObjMap.put(e.echosign_dev1__Recipient__c, e);
    //contIds.add(e.echosign_dev1__Recipient__c);
  //}
  
  userList = [Select Id, ContactId From User Where ContactId IN :conIds And ProfileId IN :profIds];
  
  //for(User u: userList){ //checks if the Partner Contact already have a Partner User. 
    //if(echoObjMap.get(u.ContactId) != null){
      //echoObjMap.remove(u.ContactId);
    //}
 // }
  
  //if(echoObjMap.size() > 0){
    Set<Id> echoObjIds = new Set<Id>();
    System.debug('@@echoObjID' +echoObjIds);
    for(Contact e : contactList){
      echoObjIds.add(e.Id);
    }
    //if(IPartner == true){
    System.debug('@@echoObjID' +echoObjIds);
    //ContactPortalUserCreator.createPortalUser(echoObjIds);
    //}
  //}*/
  
      Set<Id> conIds = new Set<Id>();
      
      //NEW 06.07.2011
      Set<Id>       fconIds     = new Set<Id>();
      List<User>    userList    = new List<User>();
      Map<Id, User> userMap     = new Map<Id, User>();
      
      for(Contact con : trigger.new){
        if(con.Contact_Profile__c != null && con.IsPartner__c){
            conIds.add(con.Id);
        }
      }
      
      userList = [Select Id, ContactId From User Where ContactId IN :conIds];
      
      system.debug('@@ ' + userList);
      
      for(User u :userList){
        userMap.put(u.ContactId, u);
      }
      
      for(Contact con : trigger.new){
        if(con.Contact_Profile__c != null && con.IsPartner__c){
            if(userMap.get(con.Id) == null){
                fconIds.add(con.Id);
            }
        }
      }
      
      if(fconIds.size() > 0){
           PortalUserCreator.createPortalUser(fconIds);       
      }
}