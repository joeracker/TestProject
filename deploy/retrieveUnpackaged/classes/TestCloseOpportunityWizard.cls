/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an organization are executed whenever Apex code is deployed
 * to a production organization to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production organization. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the organization size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class TestCloseOpportunityWizard {
	
	static Id getRecordTypeId(String name) {		 
		Schema.DescribeSObjectResult d = Schema.SObjectType.Opportunity;
		Map<String,Schema.RecordTypeInfo> rtMapByName = d.getRecordTypeInfosByName();
		Schema.RecordTypeInfo rtByName = rtMapByName.get(name);
		return rtByName.getRecordTypeId();		
	}
	
	static Account getAccount() {
		Account a = new Account();
		a.Name = 'Account';
		return a;
	}
	
	static Opportunity getOppty(Account a, Id recordTypeId) {
		Opportunity o = new Opportunity();
		o.Name = 'OpptyName';
		o.StageName = 'Validate';
		o.CloseDate = Date.today().addMonths(1);
		o.AccountId = a.Id;		
		o.EVA_Grade__c = 'A++';
		o.RecordTypeId = recordTypeId;
		return o;
	}

	static Contact getContact(Account a) {
		Contact c = new Contact();
		c.FirstName = 'FirstName';
		c.LastName = 'LastName';
		c.AccountId = a.Id;
		return c;
	}

	static Rackspace_Contacts__c getRackspaceContact(Account a, Contact c) {
		Rackspace_Contacts__c rc = new Rackspace_Contacts__c();
		rc.Rackspace_Contact__c = c.Id;
		rc.Rackspace_Account__c = a.Id;
		rc.Role__c = 'Some Role';
		return rc;	
	}

	static Close_Opportunity_Wizard_Properties__c getWizardProps(Id OpptyRecordTypeId){
		Close_Opportunity_Wizard_Properties__c wizProps = new Close_Opportunity_Wizard_Properties__c();
		wizProps.Name = 'TestProps';
		wizProps.Opportunity_Record_Type_Id__c = OpptyRecordTypeId;
		wizProps.Page_Order__c = '1;2;3;4';
		return wizProps;
	}

	//Test the CloseOpportunityWizard
	//Test the constructor
    static testMethod void testWizard001_Constructor() {
    	//Set up the proper data
		Account a = getAccount();
		insert a;
		Contact c = getContact(a);
		insert c;
		Rackspace_Contacts__c rc = getRackspaceContact(a,c);
		insert rc;
		Id recId = getRecordTypeId('New');
		Opportunity oppty = getOppty(a,recId);
		insert oppty;
		Close_Opportunity_Wizard_Properties__c wizProps = getWizardProps(recId);
		insert wizProps;
		
		//Instantiate a new controller with all parameters in the page
        ApexPages.StandardController con = new ApexPages.StandardController(oppty);
        CloseOpportunityWizard controller = new CloseOpportunityWizard(con);
        System.assertNotEquals(null,controller);		
	} 
	
	static testMethod void testWizard002_TestAllMethods() {
    	//Set up the proper data
		Account a = getAccount();
		insert a;
		Contact c = getContact(a);
		insert c;
		Rackspace_Contacts__c rc = getRackspaceContact(a,c);
		insert rc;
		Id recId = getRecordTypeId('New');
		Opportunity oppty = getOppty(a,recId);
		insert oppty;
		Close_Opportunity_Wizard_Properties__c wizProps = getWizardProps(recId);
		insert wizProps;
		
		//Instantiate a new controller with all parameters in the page
        ApexPages.StandardController con = new ApexPages.StandardController(oppty);
        CloseOpportunityWizard controller = new CloseOpportunityWizard(con);
        System.assertNotEquals(null,controller);
        
        //Testing Getters
        List<AccountContactRoleWrapper> arcwrapperList = controller.getAccountContactRoles();
        System.assertEquals(1,arcwrapperList.size());
        
        Integer i = controller.getCurrentStep();
        System.assertEquals(1,i);
        
        String recTypeName = controller.getOpptyRecordType();
        System.assertEquals('New',recTypeName);
        
       Close_Opportunity_Wizard_Properties__c wizProperites = controller.getWizardProperties();
       System.assertEquals(wizProperites.name, wizProps.name);	
       
       controller.refetchContactObjects();
       System.assertNotEquals(0,controller.accountContactRoleMap.size());
       
       rc.Role__c = 'Primary Contact';
       update rc;
       
       controller.refetchContactObjects();
       System.assertNotEquals(0,controller.accountContactRoleMap.size());
       
       PageReference pageRef = controller.goToFirstPage();
       System.assertNotEquals(null,pageRef);       
       System.assert(pageRef.getUrl().contains('CloseOpportunityPage1'));
	} 

	static testMethod void testWizard002_TestSaveAndNext() {
		//Set up the proper data
		Account a = getAccount();
		insert a;
		Contact c = getContact(a);
		c.MailingStreet = 'Some street';
		insert c;
		Rackspace_Contacts__c rc = getRackspaceContact(a,c);
		rc.Role__c = 'Primary Contact';
		insert rc;
		Id recId = getRecordTypeId('New');
		Opportunity oppty = getOppty(a,recId);
		insert oppty;
		Close_Opportunity_Wizard_Properties__c wizProps = getWizardProps(recId);
		insert wizProps;
		
		Test.startTest();
		//Instantiate a new controller with all parameters in the page
		ApexPages.StandardController con = new ApexPages.StandardController(oppty);
		CloseOpportunityWizard controller = new CloseOpportunityWizard(con);
		System.assertNotEquals(null,controller);
		  
	    PageReference pageRef = controller.goToFirstPage();
	    System.assertNotEquals(null,pageRef);       
	    System.assert(pageRef.getUrl().contains('CloseOpportunityPage1'));
	   
 	    PageReference savePageRef = controller.saveAndNext();
 	    System.assert(savePageRef.getUrl().contains('CloseOpportunityPage2'));       
	    //currentPage = 2
	    
	    //Need to set something b/c savePageRef is null...
	    controller.fetchContactObjects();
	    	    
	    savePageRef = controller.saveAndNext();
	    System.assertNotEquals(null,savePageRef); 
	    System.assert(savePageRef.getUrl().contains('CloseOpportunityPage3'));
	    //currentPage = 3
	    savePageRef = controller.saveAndNext();
	    System.assert(savePageRef.getUrl().contains('CloseOpportunityPage4'));       
	   
	    //Just save the existing contact
	    controller.selectedAccountContactRoleId = rc.Id;
	    controller.saveContactRole();	   
	    controller.selectedAccountContactRoleId = null;
	    
	    controller.addNewContactWithRole();	    
	    System.assert(controller.accountContactRoleMap.containsKey('none'));
	    System.assertEquals(2,controller.accountContactRoleMap.size());
	    controller.cancelContactRoleEdit();
	    System.assertEquals(1,controller.accountContactRoleMap.size());
	    
	    controller.addNewContactWithRole();	    
	    System.assert(controller.accountContactRoleMap.containsKey('none'));
	    System.assertEquals(2,controller.accountContactRoleMap.size());
	    
	    //modify this accountContactRoleMap.put('none',acrWrapper);
	    AccountContactRoleWrapper acrWrapper = controller.accountContactRoleMap.get('none');
	    acrWrapper.getContactRole().Role__c = 'Foo';
	    acrWrapper.getRackspace_Contact().FirstName = 'First';
	    acrWrapper.getRackspace_Contact().LastName = 'Last123459876434';
	    acrWrapper.getRackspace_Contact().MailingStreet = 'Street';
	    	    
	    //then saveContactRole	    	  
	    controller.saveContactRole();
	    Integer cAssert = [Select count() From Contact Where LastName = 'Last123459876434'];
	    System.assertEquals(1,cAssert);
	           
	    //addNewContactRole
	    controller.addNewContactRole();
	    System.assert(controller.accountContactRoleMap.containsKey('none'));
	    System.assertEquals(3,controller.accountContactRoleMap.size());
	    //done
	    Test.stopTest();
	}
	
	//Test deleteContactRole
	static testMethod void testWizard003_TestdeleteContactRole() {
		//Set up the proper data
		Account a = getAccount();
		insert a;
		Contact c = getContact(a);
		c.MailingStreet = 'Some street';
		insert c;
		Rackspace_Contacts__c rc = getRackspaceContact(a,c);
		rc.Role__c = 'Primary Contact';
		insert rc;
		Id recId = getRecordTypeId('New');
		Opportunity oppty = getOppty(a,recId);
		insert oppty;
		Close_Opportunity_Wizard_Properties__c wizProps = getWizardProps(recId);
		insert wizProps;
		
		Test.startTest();
		//Instantiate a new controller with all parameters in the page
		ApexPages.StandardController con = new ApexPages.StandardController(oppty);
		CloseOpportunityWizard controller = new CloseOpportunityWizard(con);
		System.assertNotEquals(null,controller);
		  
	    PageReference pageRef = controller.goToFirstPage();
	    System.assertNotEquals(null,pageRef);       
	    System.assert(pageRef.getUrl().contains('CloseOpportunityPage1'));
	   
 	    PageReference savePageRef = controller.saveAndNext();
 	    System.assert(savePageRef.getUrl().contains('CloseOpportunityPage2'));       
	    //currentPage = 2
	    
	    //Need to set something b/c savePageRef is null...
	    controller.fetchContactObjects();
	    	    
	    savePageRef = controller.saveAndNext();
	    System.assertNotEquals(null,savePageRef); 
	    System.assert(savePageRef.getUrl().contains('CloseOpportunityPage3'));
	    //currentPage = 3
	    savePageRef = controller.saveAndNext();
	    System.assert(savePageRef.getUrl().contains('CloseOpportunityPage4'));       
	   	
	    System.assertEquals(1,controller.accountContactRoleMap.size());	    
	    controller.selectedAccountContactRoleId = rc.Id;
	    controller.deleteContactRole();	    
	    System.assertEquals(0,controller.accountContactRoleMap.size());
	    	   
	    //done
	    Test.stopTest();
	}
	
	//Test with a blank page order properties
	static testMethod void testWizard004_TestWizardBlankPages() {
		//Set up the proper data
		Account a = getAccount();
		insert a;
		Contact c = getContact(a);
		c.MailingStreet = 'Some street';
		insert c;
		Rackspace_Contacts__c rc = getRackspaceContact(a,c);
		rc.Role__c = 'Primary Contact';
		insert rc;
		Id recId = getRecordTypeId('New');
		Opportunity oppty = getOppty(a,recId);
		insert oppty;
		Close_Opportunity_Wizard_Properties__c wizProps = getWizardProps(recId);
		wizProps.Page_Order__c = null;
		insert wizProps;
		
		Test.startTest();
		//Instantiate a new controller with all parameters in the page
		ApexPages.StandardController con = new ApexPages.StandardController(oppty);
		CloseOpportunityWizard controller = new CloseOpportunityWizard(con);
		System.assertNotEquals(null,controller);
		  
	    PageReference pageRef = controller.goToFirstPage();
	    System.assertNotEquals(null,pageRef);       
	    System.assert(pageRef.getUrl().contains('CloseOpportunityPage4'));	   
	    	   
	    //done
	    Test.stopTest();
	}
	
	//Test getting PageOrder with Blank Wizard
	static testMethod void testWizard005_TestPageOrderWithBlankWizard() {
		//Set up the proper data
		Account a = getAccount();
		insert a;
		Contact c = getContact(a);
		c.MailingStreet = 'Some street';
		insert c;
		Rackspace_Contacts__c rc = getRackspaceContact(a,c);
		rc.Role__c = 'Primary Contact';
		insert rc;
		Id recId = getRecordTypeId('New');
		Opportunity oppty = getOppty(a,recId);
		insert oppty;
		Close_Opportunity_Wizard_Properties__c wizProps = getWizardProps(recId);
		insert wizProps;
		
		Test.startTest();
		//Instantiate a new controller with all parameters in the page
		ApexPages.StandardController con = new ApexPages.StandardController(oppty);
		CloseOpportunityWizard controller = new CloseOpportunityWizard(con);
		controller.wizardProperties = null;
		controller.setPageOrder();
		System.assertNotEquals(null,controller);
		  
	    PageReference pageRef = controller.goToFirstPage();
	    System.assertNotEquals(null,pageRef);       
	    System.assert(pageRef.getUrl().contains('CloseOpportunityPage1'));	   
	    	   
	    //done
	    Test.stopTest();
	}
	

	//Test getFullSObject 
	static testMethod void testWizard006_TestgetFullSObject() {
		//Set up the proper data
		Account a = getAccount();
		insert a;
		Contact c = getContact(a);
		c.MailingStreet = 'Some street';
		insert c;
		Rackspace_Contacts__c rc = getRackspaceContact(a,c);
		rc.Role__c = 'Primary Contact';
		insert rc;
		Id recId = getRecordTypeId('New');
		Opportunity oppty = getOppty(a,recId);
		insert oppty;
		Close_Opportunity_Wizard_Properties__c wizProps = getWizardProps(recId);
		insert wizProps;
		
		Test.startTest();
		//Instantiate a new controller with all parameters in the page
		ApexPages.StandardController con = new ApexPages.StandardController(oppty);
		CloseOpportunityWizard controller = new CloseOpportunityWizard(con);
		List<SObject> test1 = controller.getFullSObject(null, 'Account', null);
		System.assertEquals(null, test1);
		
		Set<String> fieldNames = new Set<String>();
		fieldNames.add('Name');
		List<SObject> test2 = controller.getFullSObject(fieldNames, 'Account', 'WHERE Id=\'' + a.Id + '\'');
		System.assertEquals(1,test2.size());
		System.assertEquals(a.Id,test2[0].Id);
		
		test2 = controller.getFullSObject(fieldNames, 'Account', 'Id=\'' + a.Id + '\'');
		System.assertEquals(a.Id,test2[0].Id);
		
		test2 = controller.getFullSObject(fieldNames, 'Account', ' WHERE Id=\'' + a.Id + '\'');
		System.assertEquals(a.Id,test2[0].Id);
		
	    //done
	    Test.stopTest();
	}
	
    //Test the AccountContactRoleWrapper
    static testMethod void testWrapper() {
		Account a = getAccount();
		insert a;
        AccountContactRoleWrapper wrapper = new AccountContactRoleWrapper(a.Id, true);
        wrapper = new AccountContactRoleWrapper(a.Id, false);
        Contact c = getContact(a);
        insert c;
        Rackspace_Contacts__c arc = getRackspaceContact(a,c);
        arc.Role__c = 'Primary Contact';
        insert arc;
        
        wrapper = new AccountContactRoleWrapper(arc, c);
        System.assertEquals(arc.Id,wrapper.getContactRole().Id);
        wrapper.setContactRole(arc);
        System.assertEquals(arc.Id,wrapper.getContactRole().Id);
        System.assertEquals(c.Id,wrapper.getRackspace_Contact().Id);
        
        //validate address
    	Id recordId = wrapper.updateRecord(true);    
        System.assertEquals(null,recordId);
        
        //Don't validate address, but update the record
        recordId = wrapper.updateRecord(false);
        System.assertEquals(null, recordId);
     
     	c.MailingStreet = 'Test Street';
    	update c;
    	
    	//have an address, and validate it
    	wrapper = new AccountContactRoleWrapper(arc,c);
    	recordId = wrapper.updateRecord(true);
    	System.assertEquals(null,recordId);
        
        //insert a contact role
        Rackspace_Contacts__c newARC = new Rackspace_Contacts__c();
        newARC.Rackspace_Account__c = a.Id; 
        Contact newC = getContact(a);        
        wrapper = new AccountContactRoleWrapper(newARC,newC);
        recordId = wrapper.updateRecord(false);        
        System.assertNotEquals(null,recordId);
        
    }
    
}