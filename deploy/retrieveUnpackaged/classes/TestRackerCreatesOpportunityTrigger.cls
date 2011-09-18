public class TestRackerCreatesOpportunityTrigger {
    
    static testMethod void testTrigger() {
    /*    Account account = new Account();
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
        insert contact;*/
        
        
        Partner__c P = new Partner__c();
        P.Partner_Account__c ='0015000000TU051';
        P.Opportunity__c   = '0065000000HHsLW'; 
        P.Role__c         = 'Pay Commissions';
        
        insert P;
        
        }
        }