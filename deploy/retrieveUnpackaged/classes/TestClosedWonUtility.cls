/*
* Author: Jeremy Ross
* Purpose: Test ClosedWonUtility
* 
*/

public class TestClosedWonUtility {

    // instance variables to be used by test methods only
    private Opportunity newOpp;
    private Opportunity oldOpp;
    private Account account;
 
    
    // constructor
    public TestClosedWonUtility() {

        // instantiate stuff
    
        account = new Account();
        account.Name = 'Test Account';
        account.RecordTypeId = [Select Id from RecordType Where Name = 'Prospect'][0].Id; insert account;
        
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

        
        oldOpp = new Opportunity();
        oldOpp.Name = 'Test Opportunity';
        oldOpp.StageName = 'Qualify';
        oldOpp.Probability = 0;
        oldOpp.AccountId = account.Id;
        oldOpp.Contract_Length__c = 12;
        oldOpp.Exchange_Fee__c = 234;
        oldOpp.Migration_Fees__c = 234;
        oldOpp.Hosting_Fee__c = 234;
        oldOpp.Setup_Fee__c = 234;
        oldOpp.CloseDate = System.today();
        oldOpp.RecordTypeId = [Select Id from RecordType Where Name = 'New'][0].Id;
        
        insert oldOpp;
        
        newOpp = oldOpp;
        oldOpp.StageName = 'Closed Won';
        oldOpp.Probability = 100;
        
        //insert newOpp;
    
    }

    static testMethod void testValidateStage() {
        TestClosedWonUtility harness;
        try {
            harness = new TestClosedWonUtility();
            
            // set probability to an acceptable level (>= 25)
            harness.oldOpp.Probability = 80;
            harness.oldOpp.StageName = 'Justify';
            
            Boolean result = ClosedWonUtility.validateStage(harness.oldOpp, harness.newOpp);
            
            // result should be true;
            System.assert(result);
        }
        
        finally {
            //harness.tearDown();
        }
        //try {
          //  harness = new TestClosedWonUtility();
            
            // set probability to an acceptable level (>= 25)
           // harness.oldOpp.Probability = 20;
          //  harness.oldOpp.StageName = 'Initiate';
            
          //  Boolean result = ClosedWonUtility.validateStage(harness.oldOpp, harness.newOpp);
            
            // result should be true;
           // System.assert(result);
           // }
        
       // finally {
            //harness.tearDown();
       // }
       }
        
        static testMethod void testValidateMarketSector() {
        TestClosedWonUtility harness;
        Boolean valid=true;
        try {
            harness = new TestClosedWonUtility();
            // set record type
            harness.account.Market_Sector__c = 'Healthcare';
            harness.oldOpp.Market_Sector__c = '';
            valid=false;
            
                        List<String> errors = new List<String>();
            Boolean result = ClosedWonUtility.validateMarketSector(harness.account,harness.newOpp,errors);
            // result should be true;
            System.assert(result);
        }
                finally {
            //harness.tearDown();
        }
                try {
                        harness = new TestClosedWonUtility();
                        harness.account.Market_Sector__c = '';
                        harness.oldOpp.Market_Sector__c = '';
                        valid=true;
                        List <String> errors = new List<String>();
                        Boolean result = ClosedWonUtility.validateMarketSector(harness.account,harness.newOpp,errors);

                        System.assert(!result);
                }
                finally {
                        //harness.tearDown();
                }
          try {
            harness = new TestClosedWonUtility();
            // set record type
            harness.account.Market_Sector__c = 'Healthcare';
            harness.newOpp.Market_Sector__c = 'Healthcare';
            valid=true;
                        List<String> errors = new List<String>();
            Boolean result = ClosedWonUtility.validateMarketSector(harness.account,harness.newOpp,errors);
            // result should be true;
            System.assert(result);
        }
                finally {
            //harness.tearDown();
        }
  
       }
       
       
       static testMethod void testValidateSupportOffice() {
        TestClosedWonUtility harness;
        Boolean valid=true;
        try {
            harness = new TestClosedWonUtility();
            // set record type
            harness.account.Support_Office__c = 'San Antonio';
            harness.oldOpp.Support_Office__c = '';
            valid=false;
                        List<String> officeerrors = new List<String>();
            Boolean result = ClosedWonUtility.validateSupportOffice(harness.account,harness.newOpp,officeerrors);
            // result should be true;
            System.assert(result);
        }
                finally {
            //harness.tearDown();
        }
                try {
                        harness = new TestClosedWonUtility();
                        harness.account.Support_Office__c = '';
                        harness.oldOpp.Support_Office__c = '';
                        valid=true;
                        List <String> officeerrors = new List<String>();
                        Boolean result = ClosedWonUtility.validateSupportOffice(harness.account,harness.newOpp,officeerrors);

                        System.assert(!result);
                }
                finally {
                        //harness.tearDown();
                }
                try {
            harness = new TestClosedWonUtility();
            // set record type
            harness.account.Support_Office__c = 'San Antonio';
            harness.oldOpp.Support_Office__c = '';
            valid=true;
                        List<String> officeerrors = new List<String>();
            Boolean result = ClosedWonUtility.validateSupportOffice(harness.account,harness.newOpp,officeerrors);
            // result should be true;
            System.assert(result);
        }
                finally {
            //harness.tearDown();
        }
                try {
                        harness = new TestClosedWonUtility();
                        harness.account.Support_Office__c = '';
                        harness.oldOpp.Support_Office__c = '';
                        valid=false;
                        List <String> officeerrors = new List<String>();
                        Boolean result = ClosedWonUtility.validateSupportOffice(harness.account,harness.newOpp,officeerrors);

                        System.assert(!result);
                }
                finally {
                        //harness.tearDown();
                }
            }
               
      static testMethod void testValidateSubType() {
        TestClosedWonUtility harness;
        Boolean valid=true;
           try {
            harness = new TestClosedWonUtility();
            // set record type
            harness.account.Sub_Type__c = 'Internal Customer';
            harness.oldOpp.Sub_Type__c = '';
            valid=false;
                        List<String> suberrors = new List<String>();
            Boolean result = ClosedWonUtility.validateSubType(harness.account,harness.newOpp,suberrors);
            // result should be true;
            System.assert(result);
        }
                finally {
            //harness.tearDown();
        }
                try {
                        harness = new TestClosedWonUtility();
                        harness.account.Sub_Type__c = '';
                        harness.oldOpp.Sub_Type__c = '';
                        valid=true;
                        List <String> suberrors = new List<String>();
                        Boolean result = ClosedWonUtility.validateSubType(harness.account,harness.newOpp,suberrors);

                        System.assert(!result);
                }
                finally {
                        //harness.tearDown();
                }
                try {
            harness = new TestClosedWonUtility();
            // set record type
            harness.account.Sub_Type__c = 'Internal Customer';
            harness.oldOpp.Sub_Type__c = '';
            valid=true;
                        List<String> suberrors = new List<String>();
            Boolean result = ClosedWonUtility.validateSubType(harness.account,harness.newOpp,suberrors);
            // result should be true;
            System.assert(result);
        }
                finally {
            //harness.tearDown();
        }
                try {
                        harness = new TestClosedWonUtility();
                        harness.account.Sub_Type__c = '';
                        harness.oldOpp.Sub_Type__c = '';
                        valid=false;
                        List <String> suberrors = new List<String>();
                        Boolean result = ClosedWonUtility.validateSubType(harness.account,harness.newOpp,suberrors);

                        System.assert(!result);
                }
                finally {
                        //harness.tearDown();
                }
            }
            
         static testMethod void testValidateSupportSegment() {
        TestClosedWonUtility harness;
        Boolean valid=true;
        try {
            harness = new TestClosedWonUtility();
            // set record type
            harness.account.Support_Segment__c = 'Managed';
            harness.oldOpp.Support_Segment__c = '';
            valid=false;
                        List<String> segmenterrors = new List<String>();
            Boolean result = ClosedWonUtility.validateSupportSegment(harness.account,harness.newOpp,segmenterrors);
            // result should be true;
            System.assert(result);
        }
                finally {
            //harness.tearDown();
        }
                try {
                        harness = new TestClosedWonUtility();
                        harness.account.Support_Segment__c = '';
                        harness.oldOpp.Support_Segment__c = '';
                        valid=true;
                        List <String> segmenterrors = new List<String>();
                        Boolean result = ClosedWonUtility.validateSupportSegment(harness.account,harness.newOpp,segmenterrors);

                        System.assert(!result);
                }
                finally {
                        //harness.tearDown();
                }
                try {
            harness = new TestClosedWonUtility();
            // set record type
            harness.account.Support_Segment__c = 'Managed';
            harness.oldOpp.Support_Segment__c = '';
            valid=true;
                        List<String> segmenterrors = new List<String>();
            Boolean result = ClosedWonUtility.validateSupportSegment(harness.account,harness.newOpp,segmenterrors);
            // result should be true;
            System.assert(result);
        }
                finally {
            //harness.tearDown();
        }
                try {
                        harness = new TestClosedWonUtility();
                        harness.account.Support_Segment__c = '';
                        harness.oldOpp.Support_Segment__c = '';
                        valid=false;
                        List <String> segmenterrors = new List<String>();
                        Boolean result = ClosedWonUtility.validateSupportSegment(harness.account,harness.newOpp,segmenterrors);

                        System.assert(!result);
                }
                finally {
                        //harness.tearDown();
                }
            }


         static testMethod void testValidateServiceLevel() {
        TestClosedWonUtility harness;
        Boolean valid=true;
        try {
            harness = new TestClosedWonUtility();
            // set record type
            harness.account.Service_Level__c = 'Managed';
            harness.oldOpp.Service_Level__c = '';
            valid=false;
                        List<String> serviceerrors = new List<String>();
            Boolean result = ClosedWonUtility.validateServiceLevel(harness.account,harness.newOpp,serviceerrors);
            // result should be true;
            System.assert(result);
        }
                finally {
            //harness.tearDown();
        }
                try {
                        harness = new TestClosedWonUtility();
                        harness.account.Service_Level__c = '';
                        harness.oldOpp.Service_Level__c = '';
                        valid=true;
                        List <String> serviceerrors = new List<String>();
                        Boolean result = ClosedWonUtility.validateServiceLevel(harness.account,harness.newOpp,serviceerrors);

                        System.assert(!result);
                }
                finally {
                        //harness.tearDown();
                }
                try {
            harness = new TestClosedWonUtility();
            // set record type
            harness.account.Service_Level__c = 'Managed';
            harness.oldOpp.Service_Level__c = '';
            valid=true;
                        List<String> serviceerrors = new List<String>();
            Boolean result = ClosedWonUtility.validateServiceLevel(harness.account,harness.newOpp,serviceerrors);
            // result should be true;
            System.assert(result);
        }
                finally {
            //harness.tearDown();
        }
                try {
                        harness = new TestClosedWonUtility();
                        harness.account.Service_Level__c = '';
                        harness.oldOpp.Service_Level__c = '';
                        valid=false;
                        List <String> serviceerrors = new List<String>();
                        Boolean result = ClosedWonUtility.validateServiceLevel(harness.account,harness.newOpp,serviceerrors);

                        System.assert(!result);
                }
                finally {
                        //harness.tearDown();
                }
            }


      static testMethod void testValidateContractLength() {
        TestClosedWonUtility harness;
        Boolean valid=true;
        try {
            harness = new TestClosedWonUtility();
            // set record type
            harness.oldOpp.Contract_Length__c = 12;
            valid=false;
            List<String> contracterrors = new List<String>();
            Boolean result = ClosedWonUtility.validateContractLength(harness.newOpp,contracterrors);
            // result should be true;
            System.assert(result);
        }
                finally {
            //harness.tearDown();
        }
                try {
                        harness = new TestClosedWonUtility();
                        harness.oldOpp.Contract_Length__c = -1;
                        valid=true;
                        List <String> contracterrors = new List<String>();
                        Boolean result = ClosedWonUtility.validateContractLength(harness.newOpp,contracterrors);

                        System.assert(!result);
                }
                finally {
                        //harness.tearDown();
                }
                try {
            harness = new TestClosedWonUtility();
            // set record type
            harness.oldOpp.Contract_Length__c = 12;
            valid=true;
            List<String> contracterrors = new List<String>();
            Boolean result = ClosedWonUtility.validateContractLength(harness.newOpp,contracterrors);
            // result should be true;
            System.assert(result);
        }
                finally {
            //harness.tearDown();
        }
                try {
                        harness = new TestClosedWonUtility();
                        harness.oldOpp.Contract_Length__c = -1;
                        valid=false;
                        List <String> contracterrors = new List<String>();
                        Boolean result = ClosedWonUtility.validateContractLength(harness.newOpp,contracterrors);

                        System.assert(!result);
                }
                finally {
                        //harness.tearDown();
                }
            }
            
    static testMethod void testValidateContactRoles() {
        TestClosedWonUtility harness;
        Boolean valid=true;
        try {
            harness = new TestClosedWonUtility();
            valid=false;
            List<String> errors = new List<String>();
            Boolean result = ClosedWonUtility.validateContactRoles(harness.newOpp, errors);
            
            // result should be false;
            System.assert(!result);
        }
        
        finally {
            //harness.tearDown();
        }
        try {
            harness = new TestClosedWonUtility();
            valid=true;
            List<String> errors = new List<String>();
            Boolean result = ClosedWonUtility.validateContactRoles(harness.newOpp, errors);
            
            // result should be false;
            System.assert(!result);
        }
        
        finally {
            //harness.tearDown();
        }
    }
    
    static testMethod void testUpdateAccountRecordType() {
        TestClosedWonUtility harness;
        try {
            harness = new TestClosedWonUtility();
            harness.account.RecordTypeId = '01250000000524x';
            harness.oldOpp.RecordTypeId = '012500000004x0l';
                        ClosedWonUtility.updateAccountRecordType(harness.account, harness.newOpp);
            
            // if we get here we're good
            System.assert(true);
        }
            
        finally {
            //harness.tearDown();
        }
        try {
            harness = new TestClosedWonUtility();
            harness.account.RecordTypeId = '012500000004xXf';
            harness.oldOpp.RecordTypeId = '0125000000050tK';
                        ClosedWonUtility.updateAccountRecordType(harness.account, harness.newOpp);
            
            // if we get here we're good
            System.assert(true);
        }
            
        finally {
            //harness.tearDown();
        }
         try {
            harness = new TestClosedWonUtility();
            harness.oldOpp.RecordTypeId = '0125000000059x7';
                        ClosedWonUtility.updateAccountRecordType(harness.account, harness.newOpp);
            
            // if we get here we're good
            System.assert(true);
        }
            
        finally {
            //harness.tearDown();
        }
      }
    
    static testMethod void testUpdateAccountSupportSegment() {
        TestClosedWonUtility harness;
        
        try {
            harness = new TestClosedWonUtility();
                        harness.account.Support_Segment__c = '';
                        harness.oldOpp.Support_Segment__c = 'Managed';
            ClosedWonUtility.updateAccountSupportSegment(harness.account, 'some segment');
            
            // if we get here we're good
            System.assert(true);
                        }
            
        finally {
            //harness.tearDown();
        }
    }
    
    
    static testMethod void testUpdateAccountServiceLevel() {
        TestClosedWonUtility harness;
        
        try {
            harness = new TestClosedWonUtility();
                        harness.account.Service_Level__c = '';
                        harness.oldOpp.Service_Level__c = 'Managed';
            ClosedWonUtility.UpdateAccountServiceLevel(harness.account, 'some service');
            
            // if we get here we're good
            System.assert(true);
                        }
            
        finally {
            //harness.tearDown();
        }
    }
    
    
    
    
    
    
    static testMethod void testUpdateAccountSubType() {
        TestClosedWonUtility harness;
        
        try {
            harness = new TestClosedWonUtility();
                        harness.account.Sub_Type__c = '';
                        harness.oldOpp.Sub_Type__c = 'Test';
            ClosedWonUtility.updateAccountSubType(harness.account, 'some sub-type');
            
            // if we get here we're good
            System.assert(true);
                        }
            
        finally {
            //harness.tearDown();
        }
    }
    
    static testMethod void testUpdateAccountSupportOffice() {
        TestClosedWonUtility harness;
        
        try {
            harness = new TestClosedWonUtility();
                        harness.account.Support_Office__c = '';
                        harness.oldOpp.Support_Office__c = 'Test';
            ClosedWonUtility.updateAccountSupportOffice(harness.account, 'some support office');
            
            // if we get here we're good
            System.assert(true);
                        }
            
        finally {
            //harness.tearDown();
        }
    }
    
    static testMethod void testUpdateAccountMarketSector() {
        TestClosedWonUtility harness;
        
        try {
            harness = new TestClosedWonUtility();
            harness.account.Market_Sector__c = '';
                        harness.oldOpp.Market_Sector__c = 'Adult Content';
            ClosedWonUtility.updateAccountMarketSector(harness.account, 'some sector');
            
            // if we get here we're good
            System.assert(true);
        }
            
        finally {
            //harness.tearDown();
        }
    }
    
    static testMethod void testUpdateOpportunityRecordType() {
        TestClosedWonUtility harness;
        
        try {
            harness = new TestClosedWonUtility();
            
            ClosedWonUtility.updateOpportunityRecordType(harness.newOpp);
            
            String recordTypeName  = [Select name from RecordType WHERE Id = :harness.newOpp.RecordTypeId 
            AND SObjectType = 'Opportunity'][0].name;
            
            System.assertEquals(recordTypeName, 'Read Only', 'Opportunity should have been Read'
                +' Only record type');
        }
            
        finally {
            //harness.tearDown();
        }
    }     
    }