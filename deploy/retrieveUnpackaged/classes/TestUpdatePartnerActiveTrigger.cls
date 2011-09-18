public class TestUpdatePartnerActiveTrigger {
    
    static testMethod void testTrigger() {
        Account account = new Account();
        account.name = 'Test Account';
        account.RecordTypeId = [Select Id from RecordType Where Name = 'Partner'][0].Id;
                account.Partner_Active__c = true;
                
            insert account;
        //added 9/2/2009
        Contact contact = new Contact();
        contact.firstname = 'Tina';
        contact.lastname = 'Buchholtz';
        contact.phone = '2103124000';
        contact.email='tbuchhol@rackspace.com';
        insert contact;
                
        echosign_dev1__SIGN_Agreement__c oldAgree = new echosign_dev1__SIGN_Agreement__c();
        oldAgree.Name = 'Test';
        oldAgree.echosign_dev1__Status__c = 'Draft';
        oldAgree.echosign_dev1__SignatureType__c = 'e-Signature';
        oldAgree.echosign_dev1__Account__c  = account.Id;
        oldAgree.echosign_dev1__Recipient__c = contact.Id;

        insert oldAgree;
        
        oldAgree.echosign_dev1__Status__c = 'Signed';
        try {
            update oldAgree;
        }
       
        catch (System.DmlException e) {
            
        }
      }
}