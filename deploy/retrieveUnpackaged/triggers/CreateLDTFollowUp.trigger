trigger CreateLDTFollowUp on Opportunity (after update) {
    Opportunity newOpp = Trigger.new[0];
    Opportunity oldOpp = Trigger.old[0];
    
    
    
    if (newOpp.StageName == 'Sent to Nurture') {
    	
    	LDT_Follow_Up__c ldtfup = new LDT_Follow_Up__c(
    	   Name = 'LDT - '+ newOpp.Name,
    	   Status__c = 'New',
    	   Opportunity__c = newOpp.Id,
    	   Owner__c = UserInfo.getUserId());
    	   insert ldtfup;
    }
   if(newOpp.StageName == 'Sent to Nurture') { 
   	Account Acct = [select Id, LDT_Nurture__c from Account where Id =: newOpp.AccountId];	   
    	   Acct.LDT_Nurture__c = true;
           update Acct;
    }
}