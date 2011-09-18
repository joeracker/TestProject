trigger CreateTaskLDT on LDT_Follow_Up__c (after insert) {

    List<Task> tasks = new List<Task>();
    List<LDT_Follow_Up__c> FollowUp = Trigger.new;
    
        
        for (LDT_Follow_Up__c FU : FollowUp) {
          Opportunity Opp = [select Id, Nurture_Follow_Up_Date__c from Opportunity where Id = :FU.Opportunity__c];
          Task tsk = new Task(
          whatID = FU.ID, 
          Ownerid = FU.Owner__c, 
          ActivityDate = Opp.Nurture_Follow_Up_Date__c,
    	  Subject = 'LDT Follow Up Task',
    	  Status = 'New',
    	  Type = 'Phone Call',
    	  RecordType = [select Id from RecordType where Name = 'Nurture']);
	  	  tasks.add(tsk);
}
insert tasks;
}