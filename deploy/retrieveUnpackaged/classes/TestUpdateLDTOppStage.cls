public class TestUpdateLDTOppStage {

static testMethod void testTrigger() {
	 Account account = new Account();
        account.name = 'Test Account';
        account.RecordTypeId = [Select Id from RecordType Where Name = 'Prospect'][0].Id;
        account.Market_Sector__c = '';
        account.Support_Office__c = '';
        account.Sub_Type__c = '';
        account.Support_Segment__c = '';
        insert account;
        
	Opportunity oldOpp = new Opportunity();
	    oldOpp.RecordTypeId = [Select Id from RecordType Where Name = 'New'][0].Id;
        oldOpp.name = 'Test Opportunity';
        oldOpp.StageName = 'Qualify';
        oldOpp.Probability = 0;
        oldOpp.AccountId = account.Id;
        oldOpp.CloseDate = System.today();
        oldOpp.Status__c = ''; //added 9/2/2009
        insert oldOpp;
     
        oldOpp.StageName = 'Sent to Nurture';
        update oldOpp;
       
       LDT_Follow_Up__c fu = [select Id from LDT_Follow_Up__c where Opportunity__c =: oldOpp.Id]; 
       fu.Status__c = 'Sent to Sales Rep';
       update fu;
        
        }
}