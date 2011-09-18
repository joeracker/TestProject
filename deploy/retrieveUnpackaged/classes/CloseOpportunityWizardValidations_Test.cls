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
private class CloseOpportunityWizardValidations_Test {

    static testMethod void myUnitTest() {
        Account a = insertAccount('Test Account 1');
        Opportunity o = insertOpportunity(a, 'Test Opportunity 1');
        
       String v1 = CloseOpportunityWizardValidations.BeforeLeaving_Page1(a, o);
       String v2 = CloseOpportunityWizardValidations.BeforeLeaving_Page2(a, o);
       String v3 = CloseOpportunityWizardValidations.BeforeLeaving_Page3(a, o);
       String v4 = CloseOpportunityWizardValidations.BeforeLeaving_Page4(a, o);
       String v5 = CloseOpportunityWizardValidations.BeforeLeaving_Page5(a, o);
       String v6 = CloseOpportunityWizardValidations.BeforeLeaving_Page6(a, o);
       String v7 = CloseOpportunityWizardValidations.BeforeEnteringTheWizard();
       
       System.assertEquals('PASS', v1);
       System.assertEquals('PASS', v2);
       System.assertEquals('PASS', v3);
       System.assertEquals('PASS', v4);
       System.assertEquals('PASS', v5);
       System.assertEquals('PASS', v6);
       System.assertEquals('PASS', v7);
       
       o.WantToCloseAndForceValidation__c = true;      
       o.Slicehost_Fees__c = 10.0;
       update o;
       
       v3 = CloseOpportunityWizardValidations.BeforeLeaving_Page3(a, o);
       
       System.assertNotEquals('PASS', v3);
       
       
    }
    
    static Account insertAccount(String name) {
        Account a = new Account();
        a.Name = name;
        insert a;
        return a;
    }    
    
    static Opportunity insertOpportunity(Account acct, String name) {
        if(acct == null) {
            acct = insertAccount(name);
        }       
        
        Opportunity o = new Opportunity();
        o.Name = name;
        o.AccountId = acct.Id;
        o.CloseDate = Date.today();
        o.StageName = 'New';        
        o.Commission_Role__c = 'Pay Commissions';
        o.OwnerId = UserInfo.getUserId();
        //o.DDI__c = '55555555555';           
        
        insert o;        
        return o;
    }
}