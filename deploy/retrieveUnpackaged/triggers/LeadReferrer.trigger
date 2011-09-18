trigger LeadReferrer on Lead (before insert, before update) {

	//defaults referrer to the Lead's Owner's Contact's Account record
	//defaults channel manager email to the Lead's Owner's Contact's Account's email address.

	Set<Id> ownerIds 				= new Set<Id>();
	Set<Id> managerIds 				= new Set<Id>();
	Set<Id> contactIds				= new Set<Id>();
	Set<Id> accountIds  			= new Set<Id>();
 
 	List<User>  userList 			= new List<User>();
	Map<Id, Id> userAccountMap		= new Map<Id, Id>();
 	
 	List<Account>  accountList 		= new List<Account>();
	Map<Id, Id> accountOwnerMap		= new Map<Id, Id>();
 	
 	List<User> managersList			= new List<User>();
 	Map<Id, String> ownerEmailMap	= new Map<Id, String>();
 	
 	for(Integer i=0; i<trigger.new.size(); i++){
 		if(trigger.isUpdate && trigger.old[i].OwnerId != trigger.new[i].OwnerId){
 			ownerIds.add(trigger.new[i].OwnerId);
 		}
 		else if(trigger.isInsert){
 			ownerIds.add(trigger.new[i].OwnerId);
 		}
 	}
 	
	userList = [Select Id, AccountId From User Where Id IN :ownerIds AND IsPortalEnabled = true];
	
	for(User u :userList){
		if(u.AccountId != null){
			userAccountMap.put(u.Id, u.AccountId);
			accountIds.add(u.AccountId);
		}	
	}

	accountList = [Select Id, OwnerId From Account Where Id IN :accountIds];
	
	for(Account a :accountlist){
		accountOwnerMap.put(a.Id, a.OwnerId);
		managerIds.add(a.OwnerId);
	}
	
	managersList = [Select Email From User Where Id IN :managerIds AND Email != null];
	
	for(User u :managersList){
		ownerEmailMap.put(u.Id, u.Email);
	}

	for(Integer i=0; i<trigger.new.size(); i++){
		if(trigger.isInsert || (trigger.isUpdate && trigger.old[i].OwnerId != trigger.new[i].OwnerId)){
			if(userAccountMap.get(trigger.new[i].OwnerId) != null){
				trigger.new[i].Referrer__c = userAccountMap.get(trigger.new[i].OwnerId);
				trigger.new[i].LeadSource  = 'Referral';
				if(accountOwnerMap.get(userAccountMap.get(trigger.new[i].OwnerId)) != null){
					if(ownerEmailMap.get(accountOwnerMap.get(userAccountMap.get(trigger.new[i].OwnerId))) != null){
						trigger.new[i].Channel_Manager_Email__c = ownerEmailMap.get(accountOwnerMap.get(userAccountMap.get(trigger.new[i].OwnerId)));
					}
				}
			}	
		}		
	}
}