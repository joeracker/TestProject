trigger User_AccountShare on User (after insert, after update) {

	Set<Id> portalProfileSet     = new Set<Id>();
	Set<Id> contactids			 = new Set<Id>();
	Set<Id> accountIds 			 = new Set<Id>();
	
	List<Profile> portalProfile  = new List<Profile>();
	List<Contact> userContacts   = new List<Contact>();
	List<AccountShare> accShare  = new List<AccountShare>();
	
	Set<Id> implicitIds = new Set<Id>();
	
	portalProfile = [Select Id, PermissionsDelegatedPortaluserAdmin From Profile];

	for(Profile p :portalProfile){
		if(p.PermissionsDelegatedPortalUserAdmin){
			portalProfileSet.add(p.Id);
		}
	}

	for(User u :trigger.new){
		if(portalProfileSet.contains(u.ProfileId)){
			accountIds.add(u.AccountId);
		}
	}
	
	if(accountIds.size() > 0){
		accShare = [Select AccountId From AccountShare Where RowCause = 'PortalImplicit' And AccountId IN:accountIds];
		if(accShare.size() > 0){
			for(AccountShare tempShare :accShare){
				implicitIds.add(tempShare.AccountId);
			}
		}
	}

	for(User u :trigger.new){
		if(portalProfileSet.contains(u.ProfileId)){
			if(implicitIds.contains(u.AccountId)){
				contactIds.add(u.ContactId);
			}
		}
	}
	
	if(contactids.size() > 0){
		userContacts = [Select id From Contact Where Id IN :contactIds];
		if(userContacts.size() > 0){
			update userContacts;
		}
	}
}