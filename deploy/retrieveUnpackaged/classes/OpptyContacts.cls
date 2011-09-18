public without sharing class OpptyContacts {
	@future
	public static void UpdateContactOwner(List<Id> AcctIds, Map<Id,Id> AcctOwnerMap){
		List<Contact> contactsToUpdate = [SELECT OwnerId, AccountId FROM Contact WHERE AccountId IN :AcctIds];
		if(contactsToUpdate != null && contactsToUpdate.size() > 0){
			Id ownerId;
			for (Contact c:contactsToUpdate){				
				ownerId = AcctOwnerMap.get(c.AccountId);
				if (ownerId != null){
					c.OwnerId = ownerId;
				}				
			}
			
			update contactsToUpdate;
			for (Contact c:contactsToUpdate){				
				System.debug('CONTACT OWNERID: ' + c.OwnerId);			
			}
		}
	}
	

}