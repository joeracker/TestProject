trigger OppShareTrig on Opportunity (after insert, after update) {

	Set<Id> oppId = new Set<Id>();
	
	for(Integer i=0; i<trigger.new.size();i++){
		if(trigger.isUpdate){
			//if(trigger.new[i].OwnerId != trigger.old[i].OwnerId){
				oppId.add(trigger.new[i].Id);
			//}	
		}
		else{
			oppId.add(trigger.new[i].Id);
		}
		
	}
	
	if(oppId.size() > 0){
		if(!Test.isRunningTest()){
			OppShareCreator.createOppShare(oppId);
		}
	}
}