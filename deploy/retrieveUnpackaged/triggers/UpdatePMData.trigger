trigger UpdatePMData on PM_Quote__c (after insert, after update) {
    //PM_Quote__c newpm = Trigger.new[0];
    //PM_Quote__c oldpm = Trigger.old[0];

	Map<Id,Opportunity> opptyMapToUpdate = new Map<Id,Opportunity>();
	for(PM_Quote__c newpm : Trigger.new) {
		if(newpm.Opportunity__c != null) {
			Opportunity Opp = new Opportunity (Id = newpm.Opportunity__c);
    		Opp.PM_Pricing__c = newpm.PM_Pricing__c;
    		Opp.Quote_Id__c = string.valueof(newpm.PM_Quote_Id__c);
    		opptyMapToUpdate.put(Opp.Id,Opp);
		}
	}
	
	
   if(opptyMapToUpdate.size() > 0) {
  	update opptyMapToUpdate.values();
   }
   
  }