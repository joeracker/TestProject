public with sharing class UserAccountShare {
	@future
     public static void AddShare(Set<String> userSet){
    
        List<AccountShare> insShareList = new List<AccountShare>();
    
    	for(String str :userSet){
    
    		String userId = str.substring(0, str.indexOf('|'));
    		String acctId = str.substring(str.indexOf('|')+1, str.length());
    
	    	AccountShare tempShare = new AccountShare();
						
			tempShare.AccountId 		 		= acctId;
			tempShare.UserorGroupId		 		= userId;
			tempShare.AccountAccessLevel 		= 'Edit';
			tempShare.OpportunityAccessLevel	= 'Read';
			
			insShareList.add(tempShare);
    	}
    	
    	if(insShareList.size() > 0){
			insert insShareList;
		}
    	
     }
}