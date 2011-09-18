@isTest
private class TEST_LeadReferrer {

    static testMethod void TESTLeadReferrer() {
    
    	List<Profile>    portalProfile = new List<Profile>();
    	List<RecordType> portalRecType = new List<RecordType>();
    
    	Id portalProfAccountId;
    	Id portalProfContactId;
    	Id portalProfUserId;
    
    	portalProfile = [Select Id, PermissionsDelegatedPortaluserAdmin  From Profile];
    	portalRecType = [Select Id, Name, SObjectType From RecordType Where SObjectType IN ('Account', 'Contact')];

		for(Profile p :portalProfile){
			if(p.PermissionsDelegatedPortalUserAdmin){
				portalProfUserId = p.Id;
				break;
			}
		}
    
    	for(RecordType rec : portalRecType){
    		if(rec.SObjectType == 'Account' && rec.Name.indexOf('Partner') != -1){
    			portalProfAccountId = rec.Id;
    		}
    		if(rec.SObjectType == 'Contact' && rec.Name.indexOf('Partner') != -1){
    			portalProfContactId = rec.Id;
    		}
    	}
    	
	    if(portalprofUserId != null && portalProfAccountId != null && portalProfContactId != null){
	    	
	    	Account portalAccount = new Account();
	    	
	    	portalAccount.Name 		  = 'TEST ACCOUNT';
	    	//portalAccount.IsPartner	  = true;
	    	portalAccount.RecordTypeId = portalProfAccountId;
	    	
	    	insert portalAccount;
	    
	    	Contact portalContact = new Contact();
	    	
	    	portalContact.LastName 		= 'PORTAL CONTACT';
	    	portalContact.FirstName 	= 'TEST ';
	    	portalContact.RecordTypeId	= portalProfContactId;
	    	portalContact.AccountId     = portalAccount.Id; 
	    
	    	insert portalContact;
	    
	    	User curUser = [Select Id, LanguageLocaleKey, LocaleSidKey, EmailEncodingKey, TimeZoneSidKey, UserName From User Where id = :UserInfo.getuserId()];
	    
	    	User portalUser = new User();
	    	
	    	portalUser.ProfileId         = portalProfUserId;
	    	portalUser.FirstName 		 = 'TEST';
	    	portalUser.LastName			 = ' PORTAL USER';
	    	portalUser.Alias 			 = 'TPU';
	    	portalUser.Email   			 = 'TEST@TEST.com';
	    	portalUser.CommunityNickName = 'TEST';
	    	portalUser.Budget__c 		 = 'US Finance'; 
	        portalUser.ContactId 		 = portalContact.Id; 
	        portalUser.UserName 		 = curUser.UserName + '_Test'+'.raxprm';
	    	portalUser.LanguageLocaleKey = UserInfo.getLocale();
	    	portalUser.TimeZoneSidKey    = curUser.TimeZoneSidKey;
	    	portaluser.EmailEncodingKey  = curUser.EmailEncodingKey; 
	    	portalUser.LocaleSidKey      = curUser.LocaleSidKey;
	        //portaluser.IsPortalEnabled   = true;
	        
	        insert portalUser;

			List<User> portalUserList = new List<User>();
			
			portalUserList = [Select Id From User Where (Profile.Name = 'Partner PRM - US' Or Profile.Name = 'Partner PRM - UK') And IsActive = true Limit 1];
			
			Lead portalLead = new Lead();
			
			if(portalUserList.size() > 0){
				
				System.RunAs(portalUserList[0]){
			
			    	portalLead.LastName  = 'TEST LEAD';
			    	portalLead.FirstName = 'FIRST ';
			    	portalLead.Company   = 'TEST COMPANY';
			    	
			    	insert portalLead;
				}
			}
			
			else{
				portalLead.LastName  = 'TEST LEAD';
		    	portalLead.FirstName = 'FIRST ';
		    	portalLead.Company   = 'TEST COMPANY';
		    	
		    	insert portalLead;
			}
			
	    	//LeadConversionShare
	    	
	    	User otherSysAd = [Select Id From User Where Id != :UserInfo.getUserId() And ProfileId = :UserInfo.getProfileId() And IsActive = true Limit 1];
	    	
	    	Lead myLead = new Lead();
	    	
	    	myLead.firstname ='FIRST';
    		myLead.lastname  = ' TEST'; 
    		myLead.company   ='FIRST TEST CORP';
	    	
	    	if(portalUserList.size() > 0){
	    		myLead.OwnerId   = portalUserList[0].id;
	    	}
	    	else{
	    		mylead.OwnerId   = otherSysAd.id;
	    	}
	    	
	    	
			insert myLead;
			Database.LeadConvert lc = new database.LeadConvert();
			lc.setLeadId(myLead.id);
			lc.setOwnerId(UserInfo.getUserId());
			LeadStatus convertStatus = [Select Id, MasterLabel from LeadStatus where IsConverted=true
			limit 1];
			lc.setConvertedStatus(convertStatus.MasterLabel);
			Database.LeadConvertResult lcr = Database.convertLead(lc);
	    		
	    }
    }
}