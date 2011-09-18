public without sharing class OpptyPartner {
    
    public static void UpdateOpptyPartnerFlag(Set<Id> OpptyIds){        
        List<Opportunity> oppsToUpdate = [SELECT Id, Partner_Opportunity__c FROM Opportunity WHERE Id IN :OpptyIds];
        List<AggregateResult> ars = [SELECT OpportunityId, COUNT(Id) FROM Partner 
                                    WHERE OpportunityId IN : OpptyIds GROUP BY OpportunityId];
        
        Map<Id, Double> OpptyToPartnerCountMap = new Map<Id, Double>();
        for (AggregateResult ar:ars){
            OpptyToPartnerCountMap.put((Id)ar.get('OpportunityId'), (Double)ar.get('expr0'));
        }
        
        if(oppsToUpdate.size()>0 && oppsToUpdate != null){
            for(Opportunity o:oppsToUpdate){
                if(OpptyToPartnerCountMap.containsKey(o.Id)){
                    if(OpptyToPartnerCountMap.get(o.Id)>0){
                        //Update Oppty checkbox to true
                        o.Partner_Opportunity__c = true;
                    } else {
                        //Update Oppty checkbox to false
                        o.Partner_Opportunity__c = false;
                    }
                } else {
                    o.Partner_Opportunity__c = false;
                }
            }           
            update oppsToUpdate;    
        }
    }   
    
    public static void AddPartner(List<Opportunity> oppPartners){
        List<Id> RefIds = new List<Id>();
        List<Opportunity> oppsToUpdatePartners = new List<Opportunity>();
        for (Opportunity o:oppPartners){
            if (o.Referrer__c != null & o.Id != null){
                RefIds.add(o.Referrer__c);
                oppsToUpdatePartners.add(o); 
            }
        }
        RecordType PartnerAccountRT = [SELECT Id FROM RecordType WHERE sObjectType='Account' AND Name='Partner' AND IsActive=true];
        Map<Id, Account> PartnerAccounts = new Map<Id, Account>([SELECT Id FROM Account WHERE Id IN :RefIds AND RecordTypeId=:PartnerAccountRT.Id]);        
        
        
        List<Partner__c> partners = new List<Partner__c>();
        for(Opportunity o:oppsToUpdatePartners){
            System.debug('^^^Oppty ID: ' + o.Id);
            if(PartnerAccounts.containsKey(o.Referrer__c)){
                Partner__c partner = new Partner__c();
                partner.Partner_Account__c = o.Referrer__c;
                partner.Opportunity__c = o.Id;
                partner.Role__c = o.Commission_Role__c;
                partner.Primary__c = false;
                
                partners.add(partner);
            }
        }
        
        if (partners.size() > 0 && partners != null){
            insert partners;
        }
        
        /* ############ CREATE NATIVE PARTNER (NOT CUSTOM PARTNER) ####################
        List<Partner> partners = new List<Partner>();
                
        for(Opportunity o:oppsToUpdatePartners){
            System.debug('^^^Oppty ID: ' + o.Id);
            if(PartnerAccounts.containsKey(o.Referrer__c)){
                Partner partner = new Partner();
                partner.AccountToId = o.Referrer__c;
                partner.OpportunityId = o.Id;
                partner.Role = o.Commission_Role__c;
                partner.IsPrimary = false;
                
                partners.add(partner);
            }
        }
        
        if (partners.size() > 0 && partners != null){
            insert partners;
        }
        */
        
    }
}