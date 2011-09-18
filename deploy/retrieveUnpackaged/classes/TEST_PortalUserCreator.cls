@isTest
private class TEST_PortalUserCreator {

  static testMethod void TESTPortalUserCreator(){
    
    List<Account>                accList  = new List<Account>();
    List<Contact>               conList  = new List<Contact>();
    List<echosign_dev1__SIGN_Agreement__c>   echoList = new List<echosign_dev1__SIGN_Agreement__c>();
    Account testAccUS = new Account();
    testAccUS.Name     = 'TEST ACC US';
    
    Account testAccUK = new Account();
    testAccUK.Name     = 'TEST ACC UK';
    
    accList.add(testAccUS);
    accList.add(testAccUK);
    
    insert accList;
    
    Contact testConUS  = new Contact();
    
    testConUS.FirstName = 'US FIRST NAME';
    testConUS.LastName  = 'US LAST NAME';
    testConUS.AccountId = accList[0].Id;
    testConUS.Email     = 'testUS@test.com';
    
    Contact testConUK  = new Contact();
    
    testConUK.FirstName = 'UK FIRST NAME';
    testConUK.LastName  = 'UK LAST NAME';
    testConUK.AccountId = accList[1].Id;
    testConUK.Email     = 'testUK@test.com';
    
    conList.add(testConUS);
    conList.add(testConUK);
    
    insert conList;
    
    echosign_dev1__SIGN_Agreement__c testEchoUS = new echosign_dev1__SIGN_Agreement__c();
    
    testEchoUS.echosign_dev1__Account__c    = accList[0].Id;
    testEchoUS.echosign_dev1__Recipient__c    = conList[0].Id;
    testEchoUS.Territory__c           = 'US/APAC'; 
    
    echosign_dev1__SIGN_Agreement__c testEchoUK = new echosign_dev1__SIGN_Agreement__c();
    
    testEchoUK.echosign_dev1__Account__c     = accList[1].Id;
    testEchoUK.echosign_dev1__Recipient__c    = conList[1].Id;
    testEchoUK.Territory__c           = 'EMEA/Benelux'; 
    
    echoList.add(testEchoUS);
    echoList.add(testEchoUK);
    
    insert echoList;
    
    //force update the account record to invoke the AcocuntEnableForPortal trigger.
    
    accList[0].IsPartner = true;
    accList[1].IsPartner = true;
    
    update accList;
    
  }

}