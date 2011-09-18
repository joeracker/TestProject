public with sharing class OpptySE {
	public static void UpdateSEEmail(List<Opportunity> oppsToUpdateSE, Map<Id, Id> oppOldSEMap, List<Id> seIds){
		Map<Id, User> seUserMap = new Map<Id, User>([SELECT Email FROM User WHERE Id IN: seIds]);
		
		for(Opportunity o:oppsToUpdateSE){
			o.SE_Email__c = seUserMap.get(oppOldSEMap.get(o.Id)).Email;
		}
	}

}