trigger OpportunityOwner on Opportunity (before insert, before update) {    
    //for Contact Owner Update
    List<Id> AcctIds = new List<Id>();
    Map<Id, Id> AcctOwnerMap = new Map<Id, Id>();   
    //for Opportunity Role Update
    List<Opportunity> oppsToUpdateRole = new List<Opportunity>();   
    //for Solution Engineer field update
    List<Opportunity> oppsToUpdateSE = new List<Opportunity>();
    List<Id> seIds = new List<Id>();
    Map<Id, Id> oppOldSEMap = new Map<Id, Id>();
    //for Secondary Solution Engineer field update
    List<Opportunity> oppsToUpdateSSE = new List<Opportunity>();
    List<Id> sseIds = new List<Id>();
    Map<Id, Id> oppOldSSEMap = new Map<Id, Id>();
   
    
    
        
    if (Trigger.isUpdate){
        for(Opportunity o:Trigger.new){         
            oppsToUpdateRole.add(o);
            if(Trigger.oldMap.get(o.Id).OwnerId != o.OwnerId){              
                AcctIds.add(o.AccountId);
                AcctOwnerMap.put(o.AccountId, o.OwnerId);               
            }
            if(Trigger.oldMap.get(o.Id).Solution_Engineer__c != o.Solution_Engineer__c && Trigger.oldMap.get(o.Id).Solution_Engineer__c != null){
                oppsToUpdateSE.add(o);
                seIds.add(Trigger.oldMap.get(o.Id).Solution_Engineer__c);
                oppOldSEMap.put(o.Id, Trigger.oldMap.get(o.Id).Solution_Engineer__c);               
            }
            if(Trigger.oldMap.get(o.Id).Additional_Solution_Engineer__c != o.Additional_Solution_Engineer__c && Trigger.oldMap.get(o.Id).Additional_Solution_Engineer__c != null){
                oppsToUpdateSSE.add(o);
                sseIds.add(Trigger.oldMap.get(o.Id).Additional_Solution_Engineer__c);
                oppOldSSEMap.put(o.Id, Trigger.oldMap.get(o.Id).Additional_Solution_Engineer__c);               
            }
                     
            //if(o.Referral_Type__c == 'Partner Referral' && o.Referrer__c != null && o.Referrer__c != Trigger.oldMap.get(o.Id).Referrer__c){
            //  oppPartners.add(o);
            //  System.Debug('**** Partner To Add: ' + o.Referrer__c);
            //}
        }
        
    } else if (Trigger.isInsert){
        for(Opportunity o:Trigger.new){         
            oppsToUpdateRole.add(o);            
            //if(o.Referral_Type__c == 'Partner Referral' && o.Referrer__c != null){
            //  oppPartners.add(o);
            //}
            
        }
    }
    System.debug('ContactOwner #: ' + AcctIds.size());
    //##### START CONTACT OWNER UPDATE ######
    if (AcctIds.size() > 0 && AcctIds != null){
        OpptyContacts.UpdateContactOwner(AcctIds, AcctOwnerMap);
    }   
    System.debug('OPP Role #: ' + oppsToUpdateRole.size()); 
    //##### START UPDATE OPPORTUNITY ROLE ######
    if (oppsToUpdateRole.size() > 0 && oppsToUpdateRole != null){   
        OpportunityOwnerUtility.updateOpportunityOwner(oppsToUpdateRole);
    } 
    System.debug('SE #: ' + oppsToUpdateSE.size());
    //##### START UPDATE SE EMAIL ######
    if(oppsToUpdateSE.size() > 0 && oppsToUpdateSE != null){
        OpptySE.UpdateSEEmail(oppsToUpdateSE, oppOldSEMap, seIds);
    }
    System.debug('SSE #: ' + oppsToUpdateSSE.size());
    //##### START UPDATE Additional SE EMAIL ######
    if(oppsToUpdateSSE.size() > 0 && oppsToUpdateSSE != null){
        OpptySSE.UpdateSSEEmail(oppsToUpdateSSE, oppOldSSEMap, sseIds);
    }

    //##### START PARTNER UPDATE #####
    //if (oppPartners.size() > 0 && oppPartners != null){
    //  OpptyPartner.AddPartner(oppPartners);
    //}
    

/*###############################################
############# OLD TRIGGER CODE BELOW #############

    Opportunity newOpp = Trigger.new[0];
//    RecordType RT = [select Id, Name from RecordType where Id =: newOpp.RecordTypeId];
    //User TL = [select Id, email from User where Id =: owner.ManagerId];
    
        // update Opportunity Owner Role
        OpportunityOwnerUtility.updateOpportunityOwner(newOpp);           
/*
* Author: Tina Buchholtz
* Purpose: Update the escalation point based on expected revenue on an opportunity.
* 
*/
   // User owner = [select Id, Budget__c, isactive, Userrole.Name, ManagerId from User where Id =: newOpp.OwnerId];
    
  //  if(RT.Name == 'Churn' && (owner.Budget__c == 'US Managed Support' || owner.Budget__c == 'US Intensive Support' || owner.Budget__c == 'US RES')){
    //if(owner.isactive == false){
        //newOpp.addError('You need to reassign this Opportunity to an active user before saving');
        //return;
      // }
    //OpportunityOwnerUtility.updateEscalationPoint(newOpp);    
//} 
}