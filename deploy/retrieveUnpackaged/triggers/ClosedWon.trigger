/*
* Author: Jeremy Ross
* Purpose: Perform validations and execute various operations when an Opportunity is set to 
* closed won.
* 
*/


trigger ClosedWon on Opportunity (before update) {
    
    Opportunity newOpp = Trigger.new[0];
    Opportunity oldOpp = Trigger.old[0];
    private Boolean valid = true;
        
       // only run if the opp is Closed Won
       if (newOpp.StageName == 'Closed Won' || newOpp.StageName == 'Closed Custom') {
    
       if(newOpp.Status__c == 'Needs Approval')
       {
        newOpp.addError('You need to get Approval before closing this Opportunity');
        return;
       }
       
       // make sure stages haven't been skipped
       
        if (!ClosedWonUtility.validateStage(oldOpp, newOpp)) {
            valid = false;
        }
        
            
        // get reference to account for later use - added service level & monitoring level SJ
        Account account = [select name, RecordType.name, Support_Office__c, OpenStack_Date__c, Support_Segment__c, Market_Sector__c, Sub_Type__c, Service_Level__c, Monitoring_Level__c from Account where id = :newOpp.AccountId];
        String ttype = [select name from RecordType where id = :oldOpp.RecordTypeId].name;
        
        
        
        if (ttype == 'Cloud Sales' || ttype == 'Cloud PS' || ttype == 'RS Cloud' || ttype == 'E&A Online' || ttype == 'Professional Services' || ttype == 'Read Only' || ttype == 'Ayuda') { 
                valid = true;
              } else {
       
        
        // make sure Contact Role exists
         List<String> errors = new List<String>();
        if (!ClosedWonUtility.validateContactRoles(newOpp, errors) && valid==true) {
            for (String error: errors) {
                newOpp.addError(error);
            }
        valid = false;
        }
        
        // check market sector
        List<String> marketerrors = new List<String>();
              if (!ClosedWonUtility.validateMarketSector(account, newOpp,marketerrors) && valid==true) {
              for (String error: marketerrors) {
                   newOpp.addError(error);
              }
           valid = false;
           }
           
         // check some more stuff
        List<String> suberrors = new List<String>();
            if (!ClosedWonUtility.validateSubType(account, newOpp,suberrors) && valid==true) {
               for (String error: suberrors) {
                    newOpp.addError(error);
               }
            valid = false;
            }
            
        //check support office
        List<String> officeerrors = new List<String>();
            if (!ClosedWonUtility.validateSupportOffice(account, newOpp,officeerrors) && valid==true) {
               for (String error: officeerrors) {
                    newOpp.addError(error);
               }
            valid = false;
            }
        
       //check support segment
       List<String> segmenterrors = new List<String>();
            if (!ClosedWonUtility.validateSupportSegment(account, newOpp,segmenterrors) && valid==true) {
               for (String error: segmenterrors) {
                    newOpp.addError(error);
               }
            valid = false;
            }
       
       //check contract length
       List<String> contracterrors = new List<String>();
           if (!ClosedWonUtility.validateContractLength(newOpp,contracterrors) && valid==true) {
              for (String error: contracterrors) {
                   newOpp.addError(error);
              }
           valid = false;
           }
           
           
       //check service level - SJ
       List<String> serviceerrors = new List<String>();
           if (!ClosedWonUtility.validateServiceLevel(account,newOpp,serviceerrors) && valid==true) {
              for (String error: serviceerrors) {
                   newOpp.addError(error);
              }
           valid = false;
           }
                          
        // one of the validations failed, so no need to continue;
        if (!valid) {
            return;
        }
        
        
            // update Account service level - SJ
        ClosedWonUtility.updateAccountServiceLevel(account, newOpp.Service_Level__c);
        
                // update Account support segment
        ClosedWonUtility.updateAccountSupportSegment(account, newOpp.Support_Segment__c);
        
                // update Account market sector
        ClosedWonUtility.updateAccountMarketSector(account, newOpp.Market_Sector__c);
               
                // update Account support office
        ClosedWonUtility.updateAccountSupportOffice(account, newOpp.Support_Office__c);
               
              // update Account SubType
        ClosedWonUtility.updateAccountSubType(account, newOpp.Sub_Type__c);
               }
             // update Account record type
        ClosedWonUtility.updateAccountRecordType(account, newOpp);
        
                // no more change to account, so update now.
        update account;
        
                        // update Opp record type
        ClosedWonUtility.updateOpportunityRecordType(newOpp);
       }
    
}