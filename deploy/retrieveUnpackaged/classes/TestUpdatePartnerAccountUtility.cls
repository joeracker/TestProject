public class TestUpdatePartnerAccountUtility {

    // instance variables to be used by test methods only
    private echosign_dev1__SIGN_Agreement__c newAgree;
    private echosign_dev1__SIGN_Agreement__c oldAgree;
    private Account account;
    private Contact contact;

    // constructor
    public TestUpdatePartnerAccountUtility() {

        // instantiate stuff
    
        account = new Account();
                account.Name = 'Test Account';
        account.RecordTypeId = [Select Id from RecordType Where Name = 'Partner'][0].Id; insert account;
        contact = new contact ();
        contact.FirstName = 'John';
        contact.LastName = 'Smith';
        contact.Phone = '2105555555';
        contact.Email = 'test@test.com';
        contact.AccountId = account.Id;
        
        oldAgree = new echosign_dev1__SIGN_Agreement__c();
        oldAgree.Name = 'Test';
        oldAgree.echosign_dev1__Status__c = 'Draft';
        oldAgree.echosign_dev1__SignatureType__c = 'e-Signature';
        oldAgree.echosign_dev1__Account__c = account.Id;
        oldAgree.echosign_dev1__Recipient__c = contact.Id;
test.startTest();        
        insert oldAgree;
test.stopTest();        
        newAgree = oldAgree;
        oldAgree.echosign_dev1__Status__c = 'Signed';
    }
    
    //static testMethod void testUpdatePartnerActive() {
      //  TestUpdatePartnerAccountUtility harness;
        
        //try {
          //  harness = new TestUpdatePartnerAccountUtility();
        
            // set agreement status
        //    harness.oldAgree.echosign_dev1__Status__c = 'Draft';
          //  Boolean result = UpdatePartnerAccountUtility.updateAccountPartnerActive(harness.oldAgree, harness.newAgree);
            
            // result should be true;
            //System.assert(result);
        //}
        
        //finally {
            //harness.tearDown();
        //}
    //}
    //static testMethod void testUpdatePartnerAccount() {
      //  TestUpdatePartnerAccountUtility harness;
        
        //try {
          //  harness = new TestUpdatePartnerAccountUtility();
        
            // set contract signed date
        //    harness.oldAgree.echosign_dev1__DateSigned__c = NULL;            
          //  Boolean result = UpdatePartnerAccountUtility.updateAccountSignedDate(harness.account, );
            
            // result should be true;
           // System.assert(result);
        //}
        
        //finally {
            //harness.tearDown();
//        }
  //  }
    

}