@isTest
private class TESTOpportunityLeadCustomListView {

    static testmethod void testopportunityleadcustomlistview(){
        Date mycdDate = date.newinstance(2011, 6, 30);
        Date mycDate = date.newinstance(2011, 3, 2);
        Decimal am = 50;
        
        Account acc = new Account();
        
        acc.Name = 'test Account';
        
        insert acc;
        
        Opportunity opp = new Opportunity();
        opp.name = 'Test';
        opp.accountid = acc.Id;
        opp.CloseDate = mycdDate;
        opp.amount = am;
        opp.StageName = 'Qualify';
        opp.createddate = mycdate;
        
        insert opp;
        
        OpportunityCustomListViewCtrl op = new OpportunityCustomListViewCtrl();
        op.pageMark = 'next';
       // op.getSortField();
        op.searchOpps();
        op.buildOppMap();
        op.mapToList();
        op.getoppList();
        op.sortField = 'stagename';
        op.searchOpps();
        op.searchOpps();
        op.EditOpp();
        op.DelOpp();
        op.oppname='test';
        op.AccName='test';
        op.OpportunityID='12345';
        op.oppStage='qualify';
        op.ownname='xyz';
        op.getStageValues();
        op.getsortdirection();
        op.sortexpression='closedate';
        
        
        op.pageMark = 'prev';
        op.searchOpps();
        
        op.pageMark = 'first';
        op.searchOpps();
        
        op.pageMark = 'last';
        op.searchOpps();
        
        Lead l = new Lead();
        
        l.FirstName = 'Test';
        l.LastName = 'test';
        l.company = 'testCompany';
        l.status = 'New';
        l.Lead_Type__c = 'Mail';
        l.createddate = mycdate;
        l.email = 'test@test.com';
        l.state = 'Nevada';
        
        insert l;
        
        LeadCustomListViewCtrl le = new LeadCustomListViewCtrl();
        le.pageMark = 'prev';
       // le.getSortField();
        le.searchLeads();
        le.buildLeadMap();
        le.mapToList();
        le.getleadList();
        le.sortField = 'status';
        le.searchLeads();
        le.searchLeads();
       // le.EditLead();
        le.DelLead();
        le.LeadName= 'test test';
       le.Company= 'testCompany';
       le.leadstatus='new';
        le.leadtype='mail';
        le.getTypeValues();
        le.getstatusValues();
        le.getsortdirection();
        le.sortexpression='createddate';
        
        
        
        le.pageMark = 'prev';
        le.searchLeads();
        
        le.pageMark = 'first';
        le.searchLeads();
        
        le.pageMark = 'last';
        le.searchLeads();
    }
}