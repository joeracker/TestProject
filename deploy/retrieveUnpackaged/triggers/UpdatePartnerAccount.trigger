trigger UpdatePartnerAccount on echosign_dev1__SIGN_Agreement__c (after Update) {
    echosign_dev1__SIGN_Agreement__c newAgree = Trigger.new[0];
    echosign_dev1__SIGN_Agreement__c oldAgree = Trigger.old[0];
	if (newAgree.echosign_dev1__StatusVisible__c == 'Signed') {
	    Account account = [select name, RecordType.name, Contract_Signed_Date__c, Partner_Active__c from Account 
	       where id = :newAgree.echosign_dev1__Account__c];
	// update Account contract signed date
	   UpdatePartnerAccountUtility.updateAccountSignedDate(account, newAgree.echosign_dev1__DateSignedDate__c);
	// update Account partner active
	   UpdatePartnerAccountUtility.updateAccountPartnerActive(account);
	   account.Partner_Active__c = true;
	//update Account Type to Partner
	   UpdatePartnerAccountUtility.updateAccountPartnerType(account);
	   account.Type = 'Partner';
	 //R Angeles 05.23.2011 - Update the IsPartner field to true for the AccountEnableForPortal trigger
	   account.IsPartner = true;
	 // no more change to account, so update now.
	        update account;
	}
}