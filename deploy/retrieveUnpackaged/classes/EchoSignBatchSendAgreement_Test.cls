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
private class EchoSignBatchSendAgreement_Test {

    static testMethod void myUnitTest() { 
	
    Test.StartTest();
        EchoSignBatchSendAgreementController api = new EchoSignBatchSendAgreementController();
	    echosign_dev1__SIGN_Agreement__c sa1 = new echosign_dev1__SIGN_Agreement__c();
	    sa1.echosign_dev1__Status__c = 'Draft';
	    insert sa1; 	
	    api.istest=true;
        api.convertEchosign();
        api.getJobs();

	Test.StopTest();
        
    }

/*    static testMethod void myUnitTest1() {
	    echosign_dev1__SIGN_Agreement__c sa1 = new echosign_dev1__SIGN_Agreement__c();
	    //sa1.Status__c = 'Draft';
	    insert sa1; 	
	 	for(sObject y : Database.query('Select Agreement__c, Id from SIGN_Agreement__c Limit 1')){
	 		y.put('Agreement__c',sa1.Id);
	 		update y;
	 		break;
	 	}
		
	    Test.StartTest();
	        INFW_ConvertEchosignToManaged api = new INFW_ConvertEchosignToManaged();
	        api.istest=true;
	
	        api.strJob1='01pA0000001rPgU';
	        api.convertEchosign();
	
		Test.StopTest();
        
    }  

    static testMethod void myUnitTest2() {
	    echosign_dev1__SIGN_Agreement__c sa1 = new echosign_dev1__SIGN_Agreement__c();
	    //sa1.Status__c = 'Draft';
	    insert sa1; 	
	 	for(sObject y : Database.query('Select Agreement__c, Id from SIGN_Agreement__c Limit 1')){
	 		y.put('Agreement__c',sa1.Id);
	 		update y;
	 		break;
	 	}
		 
		
    Test.StartTest();
        INFW_ConvertEchosignToManaged api = new INFW_ConvertEchosignToManaged();
        api.istest2=true;
        
        api.strJob2='01pA0000001rPgU';
        api.convertEchosign();
         
	Test.StopTest();
        
    }*/
}