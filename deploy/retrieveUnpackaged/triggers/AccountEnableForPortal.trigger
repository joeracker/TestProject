trigger AccountEnableForPortal on Account (after update) {

  Set<Id> profIds = new Set<Id>();
  
  List<Profile> portalProf = new List<Profile>();
  
  portalProf = [Select Id From Profile Where Name = 'Partner PRM - UK' Or Name = 'Partner PRM - US'];
  
  for(Profile p :portalProf){
    profIds.add(p.Id);
  }

  Set<Id> accIds = new Set<Id>();
  Set<Id> conIds = new Set<Id>();

  List<echosign_dev1__SIGN_Agreement__c>     echoObjList = new List<echosign_dev1__SIGN_Agreement__c>();
  Map<Id, echosign_dev1__SIGN_Agreement__c>   echoObjMap  = new Map<Id, echosign_dev1__SIGN_Agreement__c>();
  
  List<User> userList = new List<User>(); 
  
  for(Account acc:trigger.new){
    if(acc.IsPartner){
      accIds.add(acc.Id);  
    }
  }

  echoObjList = [Select id, echosign_dev1__Recipient__c, echosign_dev1__Account__c, Territory__c
           From   echosign_dev1__SIGN_Agreement__c
           Where  echosign_dev1__Account__c IN :accIds 
           And echosign_dev1__StatusVisible__c =: 'Signed'
           And   echosign_dev1__Recipient__c != null
            ];
            // And echosign_dev1__StatusVisible__c ='Signed'

  for(echosign_dev1__SIGN_Agreement__c e :echoObjList){
    echoObjMap.put(e.echosign_dev1__Recipient__c, e);
    conIds.add(e.echosign_dev1__Recipient__c);
  }

  userList = [Select Id, ContactId From User Where ContactId IN :conIds And ProfileId IN :profIds];

  for(User u: userList){ //checks if the Partner Account already have a Partner User. 
    if(echoObjMap.get(u.ContactId) != null){
      echoObjMap.remove(u.ContactId);
    }
  }
  if(echoObjMap.size() > 0){
    Set<Id> echoObjIds = new Set<Id>();
    for(echosign_dev1__SIGN_Agreement__c e :echoObjList){
      echoObjIds.add(e.Id);
    }
    PortalUserCreator.createPortalUser(echoObjIds);
  }
}