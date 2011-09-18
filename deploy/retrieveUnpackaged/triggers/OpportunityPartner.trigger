trigger OpportunityPartner on Opportunity (after insert, after update) {
	//for Partner Referral List add on
	List<Opportunity> oppPartners = new List<Opportunity>(); 
	
	if (Trigger.isUpdate){
		for(Opportunity o:Trigger.new){		 	
		 	if(o.Referral_Type__c == 'Partner Referral' && o.Referrer__c != null && o.Referrer__c != Trigger.oldMap.get(o.Id).Referrer__c){
				oppPartners.add(o);
				System.Debug('**** Partner To Add: ' + o.Referrer__c);
			} else if(o.Referral_Type__c == 'Partner Referral' && o.Referrer__c != null && o.Commission_Role__c != Trigger.oldMap.get(o.Id).Commission_Role__c && o.Referrer__c == Trigger.oldMap.get(o.Id).Referrer__c){
				//this fixes bug where user forgets to enter Commission Role and Partner trigger does not retrigger.
				oppPartners.add(o);
				System.Debug('**** Partner To Update: ' + o.Referrer__c);
			}
		}
		
	} else if (Trigger.isInsert){
		for(Opportunity o:Trigger.new){			
			if(o.Referral_Type__c == 'Partner Referral' && o.Referrer__c != null){
				oppPartners.add(o);
			}
			
		}
	}
	
	//##### START PARTNER UPDATE #####
	if (oppPartners.size() > 0 && oppPartners != null){
		OpptyPartner.AddPartner(oppPartners);
	}
}