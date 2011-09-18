public with sharing class AccountContactRoleWrapper {
	
	private Rackspace_Contacts__c contactRole;
	private Rackspace_Contacts__c contactRoleOriginal;
	private Contact Rackspace_Contact;
	private Contact contactOriginal;
	
	public Boolean isEditMode {get;set;}
	public Boolean isNew {get;set;}
	public Boolean useExistingContact {get;set;}
	
	public Contact getRackspace_Contact() {
		return this.Rackspace_Contact;
	}
		
	public Rackspace_Contacts__c getContactRole() {
		return this.contactRole;
	}
	
	public void setContactRole(Rackspace_Contacts__c acr) {
		this.contactRole = acr;
	}
			
	public AccountContactRoleWrapper(Id accountId, Boolean newContact) {
		contactRole = new Rackspace_Contacts__c(Rackspace_Account__c = accountId);
		isNew = true;
		isEditMode = true;
		useExistingContact = !newContact;
		if (newContact) {
			Rackspace_Contact  = new Contact();	
			contactRoleOriginal = contactRole.clone(true,true);		
		}
	}
		
	public AccountContactRoleWrapper(Rackspace_Contacts__c acr, Contact c) {
		this.contactRole = acr;
		this.contactRoleOriginal = acr.clone(true,true);
		this.Rackspace_Contact = c;
		if(c != null) {
			this.contactOriginal = c.clone(true,true);
		}
		isEditMode = false;
		isNew = false;
		useExistingContact = false;
	}
		
	public Id updateRecord(Boolean requireAddress) {
		System.debug('BEGIN: updateRecord');
		System.Savepoint sp = Database.setSavepoint();
		//Before we insert or update the new Contact and or Contact Role
		// First check if it is primary and require Mailing Address
		if(contactRole.Role__c == 'Primary Contact' && requireAddress) {
			System.debug('Is Primary Contact');
			/* complex and complete address test
			if(	Rackspace_Contact.MailingStreet == null ||
				Rackspace_Contact.MailingState == null ||
				Rackspace_Contact.MailingCity == null ||
				Rackspace_Contact.MailingPostalCode == null ||
				Rackspace_Contact.MailingCountry == null ||
			    Rackspace_Contact.MailingStreet == '' ||
				Rackspace_Contact.MailingState == '' ||
				Rackspace_Contact.MailingCity == '' ||
				Rackspace_Contact.MailingPostalCode == '' ||
				Rackspace_Contact.MailingCountry == '') 
				*/
			if( Rackspace_Contact.MailingStreet == null || Rackspace_Contact.MailingStreet == '') {
					System.debug('Primary Contact has no Mailing Street');
					ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Primary Contact must have a mailing address.'));
					return null;
				}				
		}
			
		try {			
			if(Rackspace_Contact != null && Rackspace_Contact.Id != null) {
				System.debug('Update Contact');						
				update Rackspace_Contact;
			} else if (Rackspace_Contact != null){
				System.debug('Insert Contact');
				Rackspace_Contact.AccountId = contactRole.Rackspace_Account__c;
				insert Rackspace_Contact;
			}
			
			if(Rackspace_Contact != null && Rackspace_Contact.Id != null) {
				contactRole.Rackspace_Contact__c = Rackspace_Contact.Id;
			}
						
			if(contactRole.Id != null) {
				System.debug('Update Account Contact Role');			
				update this.contactRole;
			} else {
				System.debug('Insert Account Contact Role');
				insert contactRole;				
				this.isNew = false;				
				return this.contactRole.Id;
			}
			isEditMode = false;
			contactRoleOriginal = contactRole.clone(true,true);
			if(Rackspace_Contact != null) {
				contactOriginal = Rackspace_Contact.clone(true,true);
			} 			
		} catch (Exception exp) {
			String errorMessage = exp.getMessage();
			System.debug('Exception: ' + errorMessage);	
			Database.rollback(sp);
			if(errorMessage.indexOf('FIELD_CUSTOM_VALIDATION_EXCEPTION, ') > -1) {
				errorMessage = errorMessage.substring(errorMessage.indexOf('FIELD_CUSTOM_VALIDATION_EXCEPTION, ')+35,errorMessage.indexOf(':',errorMessage.indexOf('FIELD_CUSTOM_VALIDATION_EXCEPTION, ')));							
			}
			ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,errorMessage));
			System.debug('errorMessage = ' + errorMessage);
		}
		System.debug('END: updateRecord');
		return null;
	}
	
	public void rollBack() {
		contactRole = contactRoleOriginal.clone(true,true);
		if(contactOriginal != null) {
			Rackspace_Contact = contactOriginal.clone(true,true);
		}
	}
		
}