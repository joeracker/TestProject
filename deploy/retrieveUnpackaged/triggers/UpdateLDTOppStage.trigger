trigger UpdateLDTOppStage on LDT_Follow_Up__c (before update) {

    LDT_Follow_Up__c newfu = Trigger.new[0];
    LDT_Follow_Up__c oldfu = Trigger.old[0];

Opportunity Opp = [select Id, AccountId, StageName,name from Opportunity where Id =:newfu.Opportunity__c];
Account Acct = [select Id, LDT_Nurture__c from Account where Id =: Opp.AccountId];
  if (newfu.Status__c == 'Sent to Sales Rep') {
    Opp.StageName = 'Qualify';
    Acct.LDT_Nurture__c = false;
  update Opp;
  update Acct;
  }
  if (newfu.Status__c == 'Closed Lost') {
    Opp.StageName = 'Closed Lost';
    Opp.Resolution_1__c = 'Project Abandoned';
    Opp.LDT_Date_Passed__c = system.now();
    Opp.LDT_Rep__c = newfu.Owner__c;
    Acct.LDT_Nurture__c = false;
  update Opp;
  update Acct;
  }
}