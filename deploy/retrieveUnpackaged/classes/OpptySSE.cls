public with sharing class OpptySSE {
  public static void UpdateSSEEmail(List<Opportunity> oppsToUpdateSSE, Map<Id, Id> oppOldSSEMap, List<Id> sseIds){
    Map<Id, User> sseUserMap = new Map<Id, User>([SELECT Email FROM User WHERE Id IN: sseIds]);
    
    for(Opportunity o:oppsToUpdateSSE){
      o.SE_Secondary_Email__c = sseUserMap.get(oppOldSSEMap.get(o.Id)).Email;
    }
  }

}