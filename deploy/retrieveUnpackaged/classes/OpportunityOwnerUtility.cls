/*
* Author: Tina Buchholtz
* Purpose: Utility class which updates the owner role on the opportunity when the owner change.
  Called via trigger.
* 
*/
public class OpportunityOwnerUtility {
	
  public static void updateOpportunityOwner(List<Opportunity> opps){
  	List<Id> uIds = new List<Id>();
  	for (Opportunity o:opps){
  		uIds.add(o.OwnerId);
  	}
  	
  	Map<Id, User> userMap = new Map<Id, User>([select Id, sso_username__c, Userrole.Name from User where Id IN :uIds]);
  	 	
  	
  	for(Opportunity o:opps){
  		User u = userMap.get(o.OwnerId);
  		o.Owner_SSO__c = u.SSO_Username__c;
  		o.Owner_Role__c = u.Userrole.Name;
  	}
  	
  	//update opps;
  }
  /*   		
  public static void updateOpportunityOwner(Opportunity newOpp) {       
     User owner = [select Id, Budget__c, sso_username__c, Userrole.Name, ManagerId from User where Id =: newOpp.OwnerId];
           newOpp.Owner_SSO__c = owner.sso_username__c;
           newOpp.Owner_Role__c = owner.Userrole.Name;         
    } */
    
 // public static void updateEscalationPoint(Opportunity newOpp){
	//RecordType RT = [select Id, Name from RecordType where Id =: newOpp.RecordTypeId];	
	//User owner = [select Id, Budget__c, sso_username__c, Userrole.Name, ManagerId from User where Id =: newOpp.OwnerId];
	//User TL = [select Id, email from User where Id =: owner.ManagerId];	
    				
    	//if(newOpp.Expected_Churn_Amount__c >= -5000){
    		
    		//newOpp.Escalation_Point__c = TL.email;
    	//String role = [select Name from Userrole where Id =: owner.Userroleid].Name;
    //	}
    	//if(newOpp.Expected_Churn_Amount__c >= -10000 && newOpp.Expected_Churn_Amount__c < -5000){
    		//if(owner.Userrole.Name.contains('M1')|| owner.Userrole.Name.contains('M3')){
    			//newOpp.Escalation_Point__c = 'msnopek@rackspace.com';
    		//}
    		//if(owner.Userrole.Name.contains('M2')||owner.Userrole.Name.contains('M4')||owner.Userrole.Name.contains('M6')){
    			//newOpp.Escalation_Point__c = 'ateten@rackspace.com';
    		//}
    		//if(owner.Userrole.Name.contains('M5')||owner.Userrole.Name.contains('M7')||owner.Userrole.Name.contains('3rd Shift')){
    			//newOpp.Escalation_Point__c = 'cmorris@rackspace.com';
    		//}
    		//if(owner.Userrole.Name.contains('M8')||owner.Userrole.Name.contains('M9')||owner.Userrole.Name.contains('M10')||owner.Userrole.Name.contains('M11')||owner.Userrole.Name.contains('M12')){
    			//newOpp.Escalation_Point__c = 'jchoe@rackspace.com';
    		//}
    		//if(owner.Userrole.Name.contains('I-2')||owner.Userrole.Name.contains('I-4')||owner.Userrole.Name.contains('I-6')){
    			//newOpp.Escalation_Point__c = 'lspears@rackspace.com';
    		//}
    		//if(owner.Userrole.Name.contains('I-3')||owner.Userrole.Name.contains('I-5')||owner.Userrole.Name.contains('I-7')){
    			//newOpp.Escalation_Point__c = 'john.ulm@rackspace.com';
    		//}
    		//if(owner.Userrole.Name.contains('I-9')||owner.Userrole.Name.contains('I-11')||owner.Userrole.Name.contains('I-13')){
    			//newOpp.Escalation_Point__c = 'kcuellar@rackspace.com';
    		//}
    	//}
    	//if(newOpp.Expected_Churn_Amount__c < -10000){
    		//if(owner.Budget__c ==('US Managed Support')){
    			//newOpp.Escalation_Point__c = 'max.thoene@rackspace.com';
    		//}
    		//if(owner.Budget__c ==('US Intensive Support')){
    			//newOpp.Escalation_Point__c = 'odus.wittenburg@rackspace.com';
    		//}
    	//}
    	//if(newOpp.Expected_Churn_Amount__c >= -25000 && (owner.Userrole.Name.contains('C1')||owner.Userrole.Name.contains('Platform'))){
    		//newOpp.Escalation_Point__c = TL.email;
    		//}
    	//if((newOpp.Expected_Churn_Amount__c < -25000 && newOpp.Expected_Churn_Amount__c >= -50000) && (owner.Userrole.Name.contains('C1')||owner.Userrole.Name.contains('Platform'))){
    		//newOpp.Escalation_Point__c = 'chris.cochran@rackspace.com';
    		//}
    	//if(newOpp.Expected_Churn_Amount__c < -50000 && (owner.Userrole.Name.contains('C1')||owner.Userrole.Name.contains('Platform'))){
    		//newOpp.Escalation_Point__c = 'taylor.rhodes@rackspace.com';
    	//}
	//}
    
}