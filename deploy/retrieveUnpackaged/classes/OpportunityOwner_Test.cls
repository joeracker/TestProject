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
private class OpportunityOwner_Test {

    static testMethod void myUnitTest() {
        Profile SEPRofile = [SELECT Id FROM Profile WHERE Name='Rackspace - SE'];       
        User u1 = [SELECT Id, sso_username__c, Userrole.Name FROM User WHERE Id=:UserInfo.getUserId()];
        List<User> SEUsers = [SELECT Id, sso_username__c, Userrole.Name FROM User WHERE PRofileId=:SEProfile.Id AND IsActive=true Limit 2];
        
        //System.runAs(u1){
            //Test.startTest();
            Account a = insertAccount('Test Account 1');
            Account p1 = insertPartnerAccount('Partner Account 1');
            Account p2 = insertPartnerAccount('Partner Account 2');
            Contact c1 = insertContact('Contact1', a, u1);
            Contact c2 = insertContact('Contact2', a, u1);
            Contact c3 = insertContact('Contact3', a, u1);
            Opportunity o = insertOpportunity(a, 'Test Opportunity 1');
            
            //Assert Owner SSO Role and SSO equals that of owner.
            System.debug('1Opp Owner: ' + o.OwnerId);
            System.debug('1Opp SSO: ' + o.Owner_SSO__c);            
            System.debug('1Opp Role: ' + o.Owner_Role__c);
            System.debug('1Opp SE:' + o.Solution_Engineer__c);
            System.debug('1Opp SSE:' + o.Additional_Solution_Engineer__c);
        
            //System.assertEquals(o.Owner_SSO__c, u1.SSO_Username__c);
            //System.assertEquals(o.Owner_Role__c, u1.Userrole.Name);
            
            //Change Owner of Opportunity
            o.OwnerId =  SEUsers[0].Id;
            o.Referral_Type__c = 'Partner Referral';
            o.Referrer__c = p1.Id;
            update o;
            
            //Assert Owner SSO Role and SSO equals that of owner.
            System.debug('2Opp SSO: ' + o.Owner_SSO__c);            
            System.debug('2Opp Role: ' + o.Owner_Role__c);
            //System.assertEquals(o.Owner_SSO__c, u1.SSO_Username__c);
            //System.assertEquals(o.Owner_Role__c, ur1.Name);
            
            //Assert that Contacts associated with Account on Opp is new Opp Owner          
            //System.assertEquals(c1.OwnerId, o.OwnerId);
            //System.assertEquals(c2.OwnerId, o.OwnerId);
            //System.assertEquals(c3.OwnerId, o.OwnerId);
            
            System.debug('SE before Add SE:' + o.Solution_Engineer__c);
            System.debug('SE Email before Add SE:' + o.SE_Email__c);
            //Add Solution Engineer
            o.Solution_Engineer__c = SEUsers[0].Id;
            update o;           
            System.debug('SE Email after Add SE:' + o.SE_Email__c);
            
            //Assert that SE Email is still blank
            //System.assertEquals(null, o.SE_Email__c);
            
            //Change Solution Engineer
            o.Solution_Engineer__c = SEUsers[1].Id;
            update o;
            
            System.debug('SSE before Add SE:' + o.Additional_Solution_Engineer__c);
            System.debug('SSE Email before Add SE:' + o.SE_Secondary_Email__c);
            //Add Solution Engineer
            o.Additional_Solution_Engineer__c = SEUsers[0].Id;
            update o;           
            System.debug('SE Email after Add SE:' + o.SE_Email__c);
            
            //Assert that SE Email is still blank
            //System.assertEquals(null, o.SE_Email__c);
            
            //Change Solution Engineer
            o.Additional_Solution_Engineer__c = SEUsers[1].Id;
            update o;
            
            //Assert that SE Email is old Solution Engineer
            //System.assertEquals(o.SE_Email__c, SEUsers[0].Email);
            
            //Change Solution Engineer
            o.Additional_Solution_Engineer__c = SEUsers[0].Id;
            update o;
            
            //Change Solution Engineer
            o.Additional_Solution_Engineer__c = SEUsers[0].Id;
            update o;
            
            //Assert that SE Email is old Solution Engineer
            //System.assertEquals(o.SE_Email__c, SEUsers[1].Email);
            //Test.stopTest();
        //}
        
                
    }
    /*
    static UserRole insertUserRole(String name){
        UserRole ur = new UserRole();
        ur.Name = name;
        insert ur;
        return ur;
    }
    
     static User insertUser(String name, String email, UserRole ur) {
        // Create a new user with the Admin User profile
        Profile adminProf = [select id from profile where name='System Administrator'];       
         
        String un = email + '.test';
        User u = new User();
        u.Alias = name;
        u.Email = email;
        u.EmailEncodingKey = 'UTF-8';
        u.LastName = 'Test';
        u.LanguageLocaleKey = 'en_US';
        u.LocaleSidKey = 'en_US';
        u.ProfileId = adminProf.Id;
        u.TimeZoneSidKey = 'America/Los_Angeles';
        u.Username = un;
        u.SSO_Username__c = name;
        u.UserRoleId = ur.Id;
        
        
        //User au = new User(alias=:name, email=:email, 
        //    emailencodingkey='UTF-8', lastname='Testing', languagelocalekey='en_US', 
        //    localesidkey='en_US', profileid = adminProf.Id, 
        //    timezonesidkey='America/Los_Angeles', username=:un);

        insert u;
        System.debug('AdminUser = '+  u);
        return u;
    } */
    
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
    
    
    
    static Contact insertContact(String name, Account acct, User u){
        Contact c = new Contact();
        c.FirstName = 'First';
        c.LastName = name;
        c.AccountId = acct.Id;
        c.OwnerId = u.Id;
        insert c;
        return c;
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