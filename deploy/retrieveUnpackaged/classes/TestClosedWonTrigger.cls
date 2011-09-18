public class TestClosedWonTrigger {
   
    static testMethod void testTrigger() {
     Boolean valid;
        Account account = new Account();
        account.name = 'Test Account';
        account.RecordTypeId = [Select Id from RecordType Where Name = 'Prospect'][0].Id;
        account.Market_Sector__c = '';
        account.Support_Office__c = '';
        account.Sub_Type__c = '';
        account.Support_Segment__c = '';
        account.Service_Level__c = '';
        insert account;

        //added 9/2/2009
        Contact contact = new Contact();
        contact.firstname = 'Tina';
        contact.lastname = 'Buchholtz';
        contact.phone = '2103124000';
        contact.email='tbuchhol@rackspace.com';
        insert contact;
        
        Rackspace_Contacts__c role = new Rackspace_Contacts__c();
        role.Rackspace_Account__c = account.id;
        role.Rackspace_Contact__c = contact.id;
        role.Role__c = 'Technical';
        insert role;

        Opportunity oldOpp = new Opportunity();
        oldOpp.RecordTypeId = [Select Id from RecordType Where Name = 'New'][0].Id;
        oldOpp.name = 'Test Opportunity';
        oldOpp.StageName = 'Justify';
        oldOpp.Probability = 0;
        oldOpp.AccountId = account.Id;
        oldOpp.Contract_Length__c = 12;
        oldOpp.Exchange_Fee__c = 234;
        oldOpp.Migration_Fees__c = 234;
        oldOpp.Hosting_Fee__c = 20000;
        oldOpp.Setup_Fee__c = 234;
        oldOpp.EVA_Grade__c = 'B';
        oldOpp.CloseDate = System.today();
        oldOpp.Market_Sector__c = 'IS';
        oldOpp.Support_Segment__c = 'Managed';
        oldOpp.Service_Level__c = 'Intensive';
        oldOpp.Support_Office__c = 'San Antonio';
        oldOpp.Sub_Type__c = 'External';
        oldOpp.Status__c = ''; //added 9/2/2009
        insert oldOpp;

        oldOpp.StageName = 'Closed Won';
        oldOpp.Probability = 100;
        valid=true;
        try {
            update oldOpp;
            update account;
        }
        
        catch (System.DmlException e) {
            
        }
    }
    
    static testMethod void testTrigger2() {
     Boolean valid;
        Account account = new Account();
        account.name = 'Test Account';
        account.RecordTypeId = [Select Id from RecordType Where Name = 'Prospect'][0].Id;
        account.Market_Sector__c = '';
        account.Support_Office__c = '';
        account.Sub_Type__c = '';
        account.Support_Segment__c = '';
        account.Service_Level__c = '';
        insert account;

        //added 9/2/2009
        Contact contact = new Contact();
        contact.firstname = 'Tina';
        contact.lastname = 'Buchholtz';
        contact.phone = '2103124000';
        contact.email='tbuchhol@rackspace.com';
        insert contact;
        
        Rackspace_Contacts__c role = new Rackspace_Contacts__c();
        role.Rackspace_Account__c = account.id;
        role.Rackspace_Contact__c = contact.id;
        role.Role__c = 'Technical';
        insert role;

        Opportunity oldOpp = new Opportunity();
        oldOpp.RecordTypeId = [Select Id from RecordType Where Name = 'E&A Online'][0].Id;
        oldOpp.name = 'Test Opportunity';
        oldOpp.StageName = 'Qualify';
        oldOpp.Probability = 0;
        oldOpp.AccountId = account.Id;
        oldOpp.Contract_Length__c = 12;
        oldOpp.Exchange_Fee__c = 234;
        oldOpp.Migration_Fees__c = 234;
        oldOpp.Hosting_Fee__c = 20000;
        oldOpp.Setup_Fee__c = 234;
        oldOpp.CloseDate = System.today();
        oldOpp.Market_Sector__c = '';
        oldOpp.Support_Segment__c = '';
        oldOpp.Support_Office__c = '';
        oldOpp.Service_Level__c = '';
        oldOpp.Sub_Type__c = '';
        oldOpp.Status__c = ''; //added 9/2/2009
        insert oldOpp;

        oldOpp.StageName = 'Closed Won';
        oldOpp.Probability = 100;
        oldOpp.Status__c = 'Needs Approval'; //added 9/2/2009
        valid=false;
        try {
            update oldOpp;
            update account;
        }
        
        catch (System.DmlException e) {
            
        }
    }
    static testMethod void testTrigger3() {
     Boolean valid;
        Account account = new Account();
        account.name = 'Test Account';
        account.RecordTypeId = [Select Id from RecordType Where Name = 'Customer'][0].Id;
        account.Market_Sector__c = '';
        account.Support_Office__c = 'Austin';
        account.Sub_Type__c = '';
        account.Support_Segment__c = 'Managed';
        account.Service_Level__c = 'Managed';
            insert account;

        //added 9/2/2009
        Contact contact = new Contact();
        contact.firstname = 'Tina';
        contact.lastname = 'Buchholtz';
        contact.phone = '2103124000';
        contact.email='tbuchhol@rackspace.com';
        insert contact;
        
        Rackspace_Contacts__c role = new Rackspace_Contacts__c();
        role.Rackspace_Account__c = account.id;
        role.Rackspace_Contact__c = contact.id;
        role.Role__c = 'Technical';
        insert role;

        Opportunity oldOpp = new Opportunity();
        oldOpp.RecordTypeId = [Select Id from RecordType Where Name = 'New'][0].Id;
        oldOpp.name = 'Test Opportunity';
        oldOpp.StageName = 'Qualify';
        oldOpp.Probability = 0;
        oldOpp.AccountId = account.Id;
        oldOpp.Contract_Length__c = -1;
        oldOpp.Exchange_Fee__c = 234;
        oldOpp.Migration_Fees__c = 234;
        oldOpp.Hosting_Fee__c = 20000;
        oldOpp.Setup_Fee__c = 234;
        oldOpp.CloseDate = System.today();
        oldOpp.Market_Sector__c = 'IS';
        oldOpp.Support_Segment__c = '';
        oldOpp.Service_Level__c = '';
        oldOpp.Support_Office__c = '';
        oldOpp.Sub_Type__c = 'External';
        oldOpp.Status__c = ''; //added 9/2/2009
        insert oldOpp;

        oldOpp.StageName = 'Closed Won';
        oldOpp.Probability = 100;
        valid=true;
        try {
            update oldOpp;
            update account;
        }
        
        catch (System.DmlException e) {
            
        }
    }
static testMethod void testTrigger4() {
     Boolean valid;
        Account account = new Account();
        account.name = 'Test Account';
        account.RecordTypeId = [Select Id from RecordType Where Name = 'Prospect'][0].Id;
        account.Market_Sector__c = 'IS';
        account.Support_Office__c = '';
        account.Sub_Type__c = '';
        account.Support_Segment__c = 'Intensive';
        account.Service_Level__c = 'Intensive';
        insert account;

        //added 9/2/2009
        Contact contact = new Contact();
        contact.firstname = 'Tina';
        contact.lastname = 'Buchholtz';
        contact.phone = '2103124000';
        contact.email='tbuchhol@rackspace.com';
        insert contact;
        
        Rackspace_Contacts__c role = new Rackspace_Contacts__c();
        role.Rackspace_Account__c = account.id;
        role.Rackspace_Contact__c = contact.id;
        role.Role__c = 'Technical';
        insert role;

        Opportunity oldOpp = new Opportunity();
        oldOpp.RecordTypeId = [Select Id from RecordType Where Name = 'New'][0].Id;
        oldOpp.name = 'Test Opportunity';
        oldOpp.StageName = 'Decide';
        oldOpp.Probability = 0;
        oldOpp.AccountId = account.Id;
        oldOpp.Contract_Length__c = 12;
        oldOpp.Exchange_Fee__c = 234;
        oldOpp.Migration_Fees__c = 234;
        oldOpp.Hosting_Fee__c = 20000;
        oldOpp.Setup_Fee__c = 234;
        oldOpp.EVA_Grade__c = 'A';
        oldOpp.CloseDate = System.today();
        oldOpp.Market_Sector__c = '';
        oldOpp.Support_Segment__c = '';
        oldOpp.Service_Level__c = '';
        oldOpp.Support_Office__c = 'San Antonio';
        oldOpp.Sub_Type__c = 'External';
        oldOpp.Status__c = ''; //added 9/2/2009
        insert oldOpp;

        oldOpp.StageName = 'Closed Won';
        oldOpp.Probability = 100;
        valid=true;
        try {
            update oldOpp;
            update account;
        }
        
        catch (System.DmlException e) {
            
        }
    }
    static testMethod void testTrigger5() {
     Boolean valid;
        Account account = new Account();
        account.name = 'Test Account';
        account.RecordTypeId = [Select Id from RecordType Where Name = 'Prospect'][0].Id;
        account.Market_Sector__c = '';
        account.Support_Office__c = '';
        account.Sub_Type__c = '';
        account.Support_Segment__c = '';
        account.Service_Level__c = 'Managed';
        insert account;

        //added 9/2/2009
        Contact contact = new Contact();
        contact.firstname = 'Tina';
        contact.lastname = 'Buchholtz';
        contact.phone = '2103124000';
        contact.email='tbuchhol@rackspace.com';
        insert contact;
        
        Rackspace_Contacts__c role = new Rackspace_Contacts__c();
        role.Rackspace_Account__c = account.id;
        role.Rackspace_Contact__c = contact.id;
        role.Role__c = 'Technical';
        insert role;

        Opportunity oldOpp = new Opportunity();
        oldOpp.RecordTypeId = [Select Id from RecordType Where Name = 'New'][0].Id;
        oldOpp.name = 'Test Opportunity';
        oldOpp.StageName = 'Justify';
        oldOpp.Probability = 0;
        oldOpp.AccountId = account.Id;
        oldOpp.Contract_Length__c = 12;
        oldOpp.Exchange_Fee__c = 234;
        oldOpp.Migration_Fees__c = 234;
        oldOpp.Hosting_Fee__c = 20000;
        oldOpp.Setup_Fee__c = 234;
        oldOpp.EVA_Grade__c = 'B';
        oldOpp.CloseDate = System.today();
        oldOpp.Market_Sector__c = 'IS';
        oldOpp.Support_Segment__c = 'Managed';
        oldOpp.Service_Level__c = '';
        oldOpp.Support_Office__c = 'San Antonio';
        oldOpp.Sub_Type__c = 'External';
        oldOpp.Status__c = 'Needs Approval'; //added 9/2/2009
        insert oldOpp;

        oldOpp.StageName = 'Closed Won';
        oldOpp.Probability = 100;
        valid=true;
        try {
            update oldOpp;
            update account;
        }
        
        catch (System.DmlException e) {
            
        }
    }
    static testMethod void testTrigger6() {
     Boolean valid;
        Account account = new Account();
        account.name = 'Test Account';
        account.RecordTypeId = [Select Id from RecordType Where Name = 'Prospect'][0].Id;
        account.Market_Sector__c = '';
        account.Support_Office__c = '';
        account.Sub_Type__c = '';
        account.Support_Segment__c = '';
        account.Service_Level__c = 'Intensive';
        insert account;

        //added 9/2/2009
        Contact contact = new Contact();
        contact.firstname = 'Tina';
        contact.lastname = 'Buchholtz';
        contact.phone = '2103124000';
        contact.email='tbuchhol@rackspace.com';
        contact.MailingStreet = '123 Holiday Road';
        insert contact;
        
        Rackspace_Contacts__c role = new Rackspace_Contacts__c();
        role.Rackspace_Account__c = account.id;
        role.Rackspace_Contact__c = contact.id;
        role.Role__c = 'Primary Contact';
        insert role;

        Opportunity oldOpp = new Opportunity();
        oldOpp.RecordTypeId = [Select Id from RecordType Where Name = 'New'][0].Id;
        oldOpp.name = 'Test Opportunity';
        oldOpp.StageName = 'Justify';
        oldOpp.Probability = 0;
        oldOpp.AccountId = account.Id;
        oldOpp.Contract_Length__c = 12;
        oldOpp.Exchange_Fee__c = 234;
        oldOpp.Migration_Fees__c = 234;
        oldOpp.Hosting_Fee__c = 20000;
        oldOpp.Setup_Fee__c = 234;
        oldOpp.EVA_Grade__c = 'A';
        oldOpp.CloseDate = System.today();
        oldOpp.Market_Sector__c = 'IS';
        oldOpp.Support_Segment__c = 'Managed';
        oldOpp.Support_Office__c = 'Austin';
        oldOpp.Service_Level__c = 'Managed';
        oldOpp.Sub_Type__c = 'Internal';
        oldOpp.Status__c = ''; //added 9/2/2009
        insert oldOpp;

        oldOpp.StageName = 'Closed Won';
        oldOpp.Probability = 100;
        oldOpp.Status__c = ''; //added 9/2/2009
        valid=true;
        try {
            update oldOpp;
            update account;
        }
        
        catch (System.DmlException e) {
            
        }
    }
static testMethod void testTrigger7() {
     Boolean valid;
        Account account = new Account();
        account.name = 'Test Account';
        account.RecordTypeId = [Select Id from RecordType Where Name = 'Prospect'][0].Id;
        account.Market_Sector__c = '';
        account.Support_Office__c = '';
        account.Sub_Type__c = '';
        account.Support_Segment__c = '';
        account.Service_Level__c = '';
        insert account;

        //added 9/2/2009
        Contact contact = new Contact();
        contact.firstname = 'Tina';
        contact.lastname = 'Buchholtz';
        contact.phone = '2103124000';
        contact.email='tbuchhol@rackspace.com';
        contact.MailingStreet = '';
        insert contact;
        
        Rackspace_Contacts__c role = new Rackspace_Contacts__c();
        role.Rackspace_Account__c = account.id;
        role.Rackspace_Contact__c = contact.id;
        role.Role__c = 'Technical';
        insert role;

        Opportunity oldOpp = new Opportunity();
        oldOpp.RecordTypeId = [Select Id from RecordType Where Name = 'New'][0].Id;
        oldOpp.name = 'Test Opportunity';
        oldOpp.StageName = 'Justify';
        oldOpp.Probability = 0;
        oldOpp.AccountId = account.Id;
        oldOpp.Contract_Length__c = 12;
        oldOpp.Exchange_Fee__c = 234;
        oldOpp.Migration_Fees__c = 234;
        oldOpp.Hosting_Fee__c = 20000;
        oldOpp.Setup_Fee__c = 234;
        oldOpp.EVA_Grade__c = 'B';
        oldOpp.CloseDate = System.today();
        oldOpp.Market_Sector__c = 'IS';
        oldOpp.Support_Segment__c = 'Managed';
        oldOpp.Service_Level__c = '';
        oldOpp.Support_Office__c = 'San Antonio';
        oldOpp.Sub_Type__c = 'External';
        oldOpp.Status__c = 'Needs Approval'; //added 9/2/2009
        insert oldOpp;

        oldOpp.StageName = 'Closed Won';
        oldOpp.Probability = 100;
        valid=true;
        try {
            update oldOpp;
            update account;
        }
        
        catch (System.DmlException e) {
            
        }
    }
  static testMethod void testTrigger8() {
     Boolean valid;
        Account account = new Account();
        account.name = 'Test Account';
        account.RecordTypeId = [Select Id from RecordType Where Name = 'Prospect'][0].Id;
        account.Market_Sector__c = '';
        account.Support_Office__c = '';
        account.Sub_Type__c = '';
        account.Support_Segment__c = 'Managed Colocation';
        account.Service_Level__c = 'Enterprise';
        insert account;

        //added 9/2/2009
        Contact contact = new Contact();
        contact.firstname = 'Tina';
        contact.lastname = 'Buchholtz';
        contact.phone = '2103124000';
        contact.email='tbuchhol@rackspace.com';
        contact.MailingStreet = '123 Holiday';
        insert contact;
        
        Rackspace_Contacts__c role = new Rackspace_Contacts__c();
        role.Rackspace_Account__c = account.id;
        role.Rackspace_Contact__c = contact.id;
        role.Role__c = 'Primary Contact';
        insert role;

        Opportunity oldOpp = new Opportunity();
        oldOpp.RecordTypeId = [Select Id from RecordType Where Name = 'New'][0].Id;
        oldOpp.name = 'Test Opportunity';
        oldOpp.StageName = 'Justify';
        oldOpp.Probability = 0;
        oldOpp.AccountId = account.Id;
        oldOpp.Contract_Length__c = -1;
        oldOpp.Exchange_Fee__c = 234;
        oldOpp.Migration_Fees__c = 234;
        oldOpp.Hosting_Fee__c = 100;
        oldOpp.Setup_Fee__c = 234;
        oldOpp.EVA_Grade__c = 'B';
        oldOpp.CloseDate = System.today();
        oldOpp.Market_Sector__c = '';
        oldOpp.Support_Segment__c = 'Managed';
        oldOpp.Service_Level__c = 'Managed Colocation';
        oldOpp.Support_Office__c = '';
        oldOpp.Sub_Type__c = 'External';
        oldOpp.Status__c = ''; //added 9/2/2009
        insert oldOpp;

        oldOpp.StageName = 'Closed Won';
        oldOpp.Probability = 100;
        valid=false;
        try {
            update oldOpp;
            update account;
        }
        
        catch (System.DmlException e) {
            
        }
    }
      static testMethod void testTrigger9() {
     Boolean valid;
        Account account = new Account();
        account.name = 'Test Account';
        account.RecordTypeId = [Select Id from RecordType Where Name = 'Prospect'][0].Id;
        account.Market_Sector__c = '';
        account.Support_Office__c = '';
        account.Sub_Type__c = '';
        account.Support_Segment__c = '';
        insert account;

        //added 9/2/2009
        Contact contact = new Contact();
        contact.firstname = 'Tina';
        contact.lastname = 'Buchholtz';
        contact.phone = '2103124000';
        contact.email='tbuchhol@rackspace.com';
        contact.MailingStreet = '123 Holiday';
        insert contact;
        
        Rackspace_Contacts__c role = new Rackspace_Contacts__c();
        role.Rackspace_Account__c = account.id;
        role.Rackspace_Contact__c = contact.id;
        role.Role__c = 'Primary Contact';
        insert role;

        Opportunity oldOpp = new Opportunity();
        oldOpp.RecordTypeId = [Select Id from RecordType Where Name = 'Cloud Sales'][0].Id;
        oldOpp.name = 'Test Opportunity';
        oldOpp.StageName = 'Justify';
        oldOpp.Probability = 0;
        oldOpp.AccountId = account.Id;
        oldOpp.Contract_Length__c = -1;
        oldOpp.Exchange_Fee__c = 234;
        oldOpp.Migration_Fees__c = 234;
        oldOpp.Hosting_Fee__c = 100;
        oldOpp.Setup_Fee__c = 234;
        oldOpp.EVA_Grade__c = 'B';
        oldOpp.CloseDate = System.today();
        oldOpp.Market_Sector__c = '';
        oldOpp.Support_Segment__c = 'Rackspace Cloud';
        oldOpp.Support_Office__c = '';
        oldOpp.Service_Level__c = '';
        oldOpp.Sub_Type__c = 'External';
        oldOpp.Status__c = ''; //added 9/2/2009
        insert oldOpp;

        oldOpp.StageName = 'Closed Won';
        oldOpp.Probability = 100;
        valid=false;
        try {
            update oldOpp;
            update account;
        }
        
        catch (System.DmlException e) {
            
        }
    }
}