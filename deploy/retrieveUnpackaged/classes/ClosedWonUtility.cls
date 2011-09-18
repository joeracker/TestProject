/*
* Author: Jeremy Ross
* Purpose: Utility class which performs various operations.  Called via trigger.
* 
*/



public class ClosedWonUtility {
    

    // make sure stage was at least Proposal
    public static Boolean validateStage(Opportunity oldOpp, Opportunity newOpp) {
        String ttype = [select name from RecordType where id = :oldOpp.RecordTypeId].name;
        if(ttype == 'Cloud Sales' || ttype == 'Cloud PS') {
            return true;
        }
        else {
        if (oldOpp.StageName == null || oldOpp.StageName == 'Qualify'|| oldOpp.StageName == 'Initiate' || oldOpp.StageName == 'Educate') {
        newOpp.addError('You can not close an Opportunity for which you have not set to'
        +' Validate, please choose Validate and resave your opportunity before'
        +' continuing.');
        return false;
        }
        return true;
    }
    }
  
   // make sure contact role stuff exists
    public static Boolean validateContactRoles(Opportunity newOpp, List<String> errors) {
            List<Rackspace_Contacts__c> roles  = [Select Rackspace_Contact__r.phone, Rackspace_Contact__r.MobilePhone, 
            Rackspace_Contact__r.Phone2__c,Rackspace_Contact__r.Phone3__c, Rackspace_Contact__r.email2__c, Rackspace_Contact__r.email,
            Rackspace_Contact__r.MailingStreet from Rackspace_Contacts__c
        where Rackspace_Account__c = :newOpp.AccountId and Role__c = 'Primary Contact'];
                // must have one.
                if (roles.size() < 1) {
        errors.add('The Account must have a Primary Contact Role before the Opportunity'
        +' can be set to Closed Won.');
        return false;
        }
        Rackspace_Contacts__c role = roles.get(0);
        Contact c = [select phone, MobilePhone, Phone2__c, Phone3__c, email, email2__c, MailingStreet from contact where id = :role.Rackspace_Contact__c];
        if (c.Phone == null && c.MobilePhone == null && c.Phone2__c == null && c.Phone3__c == null) {
        errors.add('Account\'s Primary Contact Role must have a phone number before the'
        +' Opportunity can be set to Closed Won');
        return false;
        }
        if (c.Email == null && c.Email2__c == null) {
        errors.add('Account\'s Primary Contact Role must have an email address before the'
        +' Opportunity can be set to Closed Won');
        return false;
        }
        if (c.MailingStreet == null && UserInfo.getUserId() != '00550000000oAFRAA2') {
        errors.add('Account\'s Primary Contact Role must have a Mailing Address before the'
        +' Opportunity can be set to Closed Won');
        return false;
        }

                return true;
    }
    
    // validate Market Sector has been selected
    public static Boolean validateMarketSector(Account account, Opportunity newOpp, List<String> marketerrors) {
        if (account.Market_Sector__c == null && newOpp.Market_Sector__c == null) {
        marketerrors.add('Please choose a Market Sector');
        return false;
        }
        return true;
       }
  
    // validate Sub-Type has been selected
    public static Boolean validateSubType(Account account, Opportunity newOpp, List<String> suberrors) {
        if (account.Sub_Type__c == null && newOpp.Sub_Type__c == null) {
        suberrors.add('Please choose a Sub-Type');
        return false;
        }
        return true;
       }

    // validate Support Office has been selected
    public static Boolean validateSupportOffice(Account account, Opportunity newOpp, List<String> officeerrors) {
        if (account.Support_Office__c == null && newOpp.Support_Office__c == null) {
        officeerrors.add('Please choose a Support Office');
        return false;
        }
        return true;
       }
       
    // validate Support Segment has been selected
    public static Boolean validateSupportSegment(Account account, Opportunity newOpp, List<String> segmenterrors) {
        if (account.Support_Segment__c == null && newOpp.Support_Segment__c == null) {
        segmenterrors.add('Please choose a Support Segment');
        return false;
        }
        return true;
       } 
       

    // validate Service Level has been selected - SJ
    public static Boolean validateServiceLevel(Account account, Opportunity newOpp, List<String> serviceerrors) {
        if (account.Service_Level__c == null && newOpp.Service_Level__c == null) {
        serviceerrors.add('Please choose a Service Level');
        return false;
        }
        return true;
       }
       
    // validate Contract Length has been selected
    public static Boolean validateContractLength(Opportunity newOpp, List<String> contracterrors) {
        if (newOpp.Contract_Length__c == null || newOpp.Contract_Length__c <= 0) {
        contracterrors.add('Please enter a Contract Length');
        return false;
        }
        return true;
       }
           
   

        // update Account Record Type, if necessary
public static void updateAccountRecordType(Account account, Opportunity newOpp) {
   RecordType recordType = [select Name from RecordType where Id = :newOpp.RecordTypeId];
   if (account.RecordType.Name == 'Prospect') {
   ID customerRecordTypeId = [Select Id from RecordType WHERE Name = 'Customer'
   and SObjectType = 'Account'][0].Id;
   account.RecordTypeId = customerRecordTypeId;     
   if (recordType.Name == 'New' || recordType.Name == 'RS Email' || recordType.Name == 'Modification' || recordType.Name == 'Online Order') {
   account.Type = 'Customer'; 
   account.Monitoring_Level__c = 'Standard'; /* SJ */
   account.Account_Birthday__c = Date.today(); /* SJ */
   }
   if (recordtype.Name == 'RS Email') {
    account.Type = 'Customer';
    account.Status__c = 'New';
    account.business_units_sold__c = 'Email and Apps';
    account.Monitoring_Level__c = 'Standard';  /* SJ */
   }
   if (recordtype.Name == 'OpenStack') {
    account.Type = 'Customer';
    account.Status__c = 'New';
    account.business_units_sold__c = 'Email and Apps';
    account.Monitoring_Level__c = 'Standard';  /* SJ */
    if (account.OpenStack_Date__c == null) {
    account.OpenStack_Date__c = Date.today();
   }}
   if (recordType.Name == 'RS Cloud' || recordType.Name == 'Cloud Sales') {
   account.Type = 'Cloud Customer';
   account.Status__c = 'New';
   account.business_units_sold__c = 'Cloud';
   account.Monitoring_Level__c = 'Standard'; /* SJ */
   }
   if (recordType.Name == 'Ayuda') {
   account.Type = 'Ayuda Customer';
   account.Monitoring_Level__c = 'Standard'; /* SJ */
   }
   if (recordType.Name == 'E&A Online') {
   account.Type = 'Mailtrust Customer';
   account.Status__c = 'New';
   account.business_units_sold__c = 'Email and Apps';
   account.Monitoring_Level__c = 'Standard'; /* SJ */
   }
        }              
}
    
    
            // update Account's service level - SJ
    public static void updateAccountServiceLevel(Account account, String service) {   
        if (account.Service_Level__c == null) {
                account.Service_Level__c = service;
        }
    
    }
    
    // update Account's support segment
    public static void updateAccountSupportSegment(Account account, String segment) {   
        if (account.Support_Segment__c == null) {
                account.Support_Segment__c = segment;
        }
    
    }
    
    
    // update Account's market sector
    public static void updateAccountMarketSector(Account account, String sector) {
        if( account.Market_Sector__c == null) {
        account.Market_Sector__c = sector;
    
                 }
    }
    // update Account's Support Office
    public static void updateAccountSupportOffice(Account account, String office) {
        if( account.Support_Office__c == null) {
        account.Support_Office__c = office;
    
                 }
    }
    
     // update Account's sub-type
    public static void updateAccountSubType(Account account, String subtype) {
        if( account.Sub_Type__c == null) {
        account.Sub_Type__c = subtype;
    
                 }
    }

    // update Opportunity record type
    public static void updateOpportunityRecordType(Opportunity newOpp) {
      RecordType recordType = [select Name from RecordType where Id = :newOpp.RecordTypeId];
          If(recordType.Name == 'Ayuda'){
            ID readOnlyOppRecordTypeId = [Select Id from RecordType WHERE Name = 'Ayuda' 
            AND SObjectType = 'Opportunity'][0].Id;        
            newOpp.RecordTypeId = readOnlyOppRecordTypeId;}
          else {
            If(recordType.Name == 'Cloud Sales'){
            ID readOnlyOppRecordTypeId = [Select Id from RecordType WHERE Name = 'Cloud Sales' 
            AND SObjectType = 'Opportunity'][0].Id;        
            newOpp.RecordTypeId = readOnlyOppRecordTypeId;}
          else {
            If(recordType.Name == 'Cloud PS'){
            ID readOnlyOppRecordTypeId = [Select Id from RecordType WHERE Name = 'Cloud PS' 
            AND SObjectType = 'Opportunity'][0].Id;        
            newOpp.RecordTypeId = readOnlyOppRecordTypeId;}
          else{
            ID readOnlyOppRecordTypeId = [Select Id from RecordType WHERE Name = 'Read Only' 
            AND SObjectType = 'Opportunity'][0].Id;
            newOpp.RecordTypeId = readOnlyOppRecordTypeId;
         }
          }
          }
   }
}