trigger saveManualSharingForPartners on Opportunity (before update, after update) 
{
    List<OpportunityShare> oppShareList = new List<OpportunityShare>();
    List<CustomOpportunityShare__c> customOppShare = new List<CustomOpportunityShare__c>();
    
       if(trigger.size<3){
       
        if (Trigger.IsBefore)
    {
        
        for(Opportunity o:Trigger.old)
        
        {
            oppShareList = [Select opp.OpportunityAccessLevel, opp.OpportunityId, opp.UserOrGroupId from OpportunityShare opp where opp.OpportunityId = :o.Id and opp.RowCause = 'Manual'];
        
        }
        
        for(OpportunityShare os:oppShareList)
        {
            CustomOpportunityShare__c cOs = new CustomOpportunityShare__c();
            cOs.AccessLevel__c = os.OpportunityAccessLevel;
            cOs.OpportunityID__c = os.OpportunityId;
            cOs.UserID__c = os.UserOrGroupId;
            customOppShare.add(cOs);
        }
        insert customOppShare;
    }
    
    if(Trigger.IsAfter)
    {
        for(Opportunity o:Trigger.new)
        {
            customOppShare = [Select c.Id, c.AccessLevel__c, c.OpportunityID__c, c.UserID__c from CustomOpportunityShare__c c where c.OpportunityID__c = :o.Id];
        }
        
        
        
        for(CustomOpportunityShare__c cOs:customOppShare)
        {
            OpportunityShare os = new OpportunityShare();
            os.OpportunityAccessLevel = cOs.AccessLevel__c;
            os.OpportunityId = cOs.OpportunityID__c;
            os.UserOrGroupId = cOs.UserID__c;
            oppShareList.add(os);
        }
        insert oppShareList;
        delete customOppShare;
       }
    }
}