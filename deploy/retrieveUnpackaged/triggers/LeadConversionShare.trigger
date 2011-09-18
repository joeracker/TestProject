trigger LeadConversionShare on Lead (after update) {
	
	List<Profile> partnerProfile = new List<Profile>();
	Set<Id> profIds = new Set<Id>();
	
	partnerProfile = [Select Id From Profile Where Name = 'Partner PRM - US' Or Name = 'Partner PRM - UK']; 
	
	for(Profile p :partnerProfile){
		profIds.add(p.Id);
	}
	
	Set<Id> oppIds = new Set<Id>();
	List<Opportunity> oppList = new List<Opportunity>();
	Map<Id, Id> oppMap = new Map<Id, Id>();
	
	Set<Id> ownerIds = new Set<Id>();
	List<User> leadOwners = new List<User>();
	Map<Id, Id> leadOwnerMap = new Map<Id, Id>();
	
	List<OpportunityShare> oppShareList = new List<OpportunityShare>();
	
	for(Integer i=0;i<trigger.new.size();i++){
		if(trigger.new[i].IsConverted){
			if(trigger.new[i].ConvertedOpportunityId != null){
				oppIds.add(trigger.new[i].ConvertedOpportunityId);
				ownerIds.add(trigger.old[i].OwnerId);
			}		
		}
	}
	
	if(oppids.size() > 0){
		oppList = [Select Id, ownerId From Opportunity Where Id IN:oppIds];
		for(Opportunity o :oppList){
			oppMap.put(o.Id, o.OwnerId);
		}
	}
	
	if(ownerIds.size() > 0){
		leadOwners = [Select Id, ProfileId From User Where Id IN :ownerIds];
		for(User u :leadOwners){
			leadOwnerMap.put(u.Id, u.ProfileId);
		}
	}
	
	for(Integer i=0;i<trigger.new.size();i++){
		if(trigger.new[i].IsConverted){
			if(trigger.new[i].ConvertedOpportunityId != null){
				if(oppMap.get(trigger.new[i].ConvertedOpportunityId) != trigger.new[i].OwnerId
				   && profIds.contains(leadOwnerMap.get(trigger.old[i].OwnerId))
				){
					OpportunityShare oppShare = new OpportunityShare();
					
					oppShare.OpportunityAccessLevel = 'Read';
					oppShare.OpportunityId	        = trigger.new[i].ConvertedOpportunityId;
					oppShare.UserOrGroupId			= trigger.new[i].OwnerId;
					
					oppShareList.add(oppShare);
				}
			}			
		}
	}
	if(oppShareList.size() > 0){
		insert oppShareList;
	}
}