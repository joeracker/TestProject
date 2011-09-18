global class OppShareCreator {
	@future
	global static void createOppShare(Set<Id> oppId){
		
		Set<Id> partnerOppId = new Set<Id>();
		
		List<OpportunityShare> oppShareList = new List<OpportunityShare>();
		
		List<Lead> 		ld 		= new List<Lead>();
		Map<Id, Lead>	ldMap	= new Map<Id, Lead>();
		
		ld = [Select ConvertedOpportunityId, CreatedById From Lead Where ConvertedOpportunityId IN :oppId And ConvertedOpportunityId != null];
		
		for(Lead l :ld){
			ldMap.put(l.ConvertedOpportunityId, l);
			System.debug('----@leadMAP' +ldMap);
		}
		
		for(Id o :oppId){
			if(ldMap.get(o) == null){
				partnerOppId.add(o);
				System.debug('++++@partnerOppId' +partnerOppId);
			}
		}
		
		List<Opportunity> oppList = new List<Opportunity>();
		Map<Id, Id>       oppMap  = new Map<Id, Id>();
		
		oppList = [Select Id, OwnerId From Opportunity Where Id IN :oppId];
		
		for(Opportunity o :oppList){
			oppMap.put(o.Id, o.OwnerId);
		}
		
		for(Id oId :oppId){
		
			if(ldMap.get(oId) != null){
		
				if(oppMap.get(oId) != ldMap.get(oId).CreatedById){
		
					OpportunityShare oppShare = new OpportunityShare();
				                
				    oppShare.OpportunityAccessLevel = 'Read';
				    oppShare.OpportunityId          = oId;
				    oppShare.UserOrGroupId          = ldMap.get(oId).CreatedById;
				    System.debug('@Opp@' +oppShare);
				        
				    oppShareList.add(oppShare);
				}
			}
		}
		System.debug('@@@OpSHARELIST' + oppShareList);

	   	if(oppShareList.size() > 0){
	   		
		    insert oppShareList;
		    System.debug('>>>>>>>>@Opp@' +oppShareList);
	   	}

        
	}
}