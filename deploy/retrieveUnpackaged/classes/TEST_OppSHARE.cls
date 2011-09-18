@isTest
private class TEST_OppSHARE {
    
    static testmethod void testoppshare(){

        Lead myLead = new Lead();
            
        myLead.firstname ='FIRST';
        myLead.lastname  = ' TEST'; 
        myLead.company   ='FIRST TEST CORP';
                
        insert myLead;
        
        
        Profile sysAd = [Select id From Profile Where Name = 'System Administrator'];
        
        User curUser   = [Select Id, LanguageLocaleKey, LocaleSidKey, EmailEncodingKey, TimeZoneSidKey, UserName From User Where id = :UserInfo.getuserId()];
        User OtherUser = [Select Id from User Where Id != :UserInfo.getUserId() And ProfileId = :sysAd.Id And IsActive = true Limit 1];
        
        
        Database.LeadConvert lc = new database.LeadConvert();
        lc.setLeadId(myLead.id);
        lc.setOwnerId(OtherUser.Id);
        LeadStatus convertStatus = [Select Id, MasterLabel from LeadStatus where IsConverted=true limit 1];
        lc.setConvertedStatus(convertStatus.MasterLabel);
        Database.LeadConvertResult lcr = Database.convertLead(lc);
        system.debug('@@@LCR: ' + lcr);
        system.debug('+++myLEAD' +myLead);
        
        
        
        Lead lead = [Select Id, name, ConvertedOpportunityId, CreatedById From Lead where Id = :myLead.Id];
        system.debug('+++myLEAD' +lead);
        
        User u = [Select id, name from user limit 1];
        
       // Opportunity op = new Opportunity
    
        Set<Id> oppId = new Set<Id>();
        oppId.add(lead.ConvertedOpportunityId);
    
        OppShareCreator.createOppShare(oppId);
        
    /*  OpportunityShare oppshare = new OpportunityShare();
        
        oppshare.OpportunityAccessLevel = 'Read';
        oppshare.OpportunityId          = lcr.getOpportunityId();
        oppshare.UserOrGroupId          = UserInfo.getuserId();
        
        insert oppshare;
        System.debug('@@oppSHARE' +oppshare); */
        
    }
}