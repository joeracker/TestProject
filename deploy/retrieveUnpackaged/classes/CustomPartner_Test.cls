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
private class CustomPartner_Test {

    static testMethod void myUnitTest() {
        Account a1 = insertAccount('Test Account 1');
        Account part1 = insertPartnerAccount('Test Partner Account 1');        
        
        Opportunity o = insertOpportunity(a1, 'Test Oppty 1');
        
        Partner__c p1 = new Partner__c();
        p1.Opportunity__c = o.Id;
        p1.Partner_Account__c = part1.Id;
        p1.Role__c = 'Pay Commission';
        p1.Primary__c = false;        
        insert p1;
        
        Opportunity o1 = [SELECT Id, Partner_Opportunity__c FROM Opportunity WHERE Id=:o.Id];
        System.assertEquals(true, o1.Partner_Opportunity__c);
        
        p1.Role__c = 'Credit';
        update p1;
        
        delete p1;
        Opportunity o2 = [SELECT Id, Partner_Opportunity__c FROM Opportunity WHERE Id=:o.Id];
        System.assertEquals(false, o2.Partner_Opportunity__c);
        
        try{
            Partner__c p2 = new Partner__c();
            p2.Opportunity__c = o.Id;
            p2.Partner_Account__c = a1.Id;
            p2.Role__c = 'Pay Commission';
            p2.Primary__c = false;        
            insert p2;  //THIS SHOULD ERROR OUT b/c CAN'T ENTER OPPTY ACCOUNT AS PARTNER ACCOUNT
            System.assert(false);
        }catch (Exception e){
            System.assert(true);
        }
        
    }
    
    static Account insertAccount(String name) {
        Account a = new Account();
        a.Name = name;
        insert a;
        return a;
    }
    
    static Account insertPartnerAccount(String name) {
        RecordType PartnerAccountRT = [SELECT Id FROM RecordType WHERE sObjectType='Account' AND Name='Partner' AND IsActive=true];
        Account a = new Account();
        a.Name = name;
        a.RecordTypeId = PartnerAccountRT.Id;
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
        
        insert o;        
        return o;
    }
}