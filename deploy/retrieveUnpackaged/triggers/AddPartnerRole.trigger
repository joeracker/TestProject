trigger AddPartnerRole on Opportunity (after insert) {
  /*
   Opportunity newOpp = Trigger.new[0];
       
  List<Partner> partner  = [Select Id from Partner where OpportunityId = :newOpp.Id];
                // must have one.
     if (partner.size() < 1 && newOpp.Referrer__c != NULL && newOpp.Commission_Role__c != NULL && newOpp.Referral_Type__c == 'Partner Referral') {
            
       partner.add(new Partner(
           AccountToId = newOpp.Referrer__c,
           Role = newOpp.Commission_Role__c,
           OpportunityId = newOpp.Id));
    
    insert partner;
                }
    */
}