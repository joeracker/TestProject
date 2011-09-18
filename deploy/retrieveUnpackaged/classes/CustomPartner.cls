public class CustomPartner {    
    
    public static void addPartner(List<Partner__c> custPartnersToAdd){      
        
        List<Partner> partners = new List<Partner>();
        
        for (Integer i=0; i<custPartnersToAdd.size(); i++){     
            Partner__c custPartner = custPartnersToAdd[i];
            Partner partner = new Partner();
            partner.AccountToId = custPartner.Partner_Account__c;
            partner.OpportunityId = custPartner.Opportunity__c;
            partner.Role = custPartner.Role__c;
            partner.IsPrimary = custPartner.Primary__c;
            
            partners.add(partner);                  
        }
        
        if (partners.size() > 0 && partners != null){
            try{
                insert partners;
                
                if (partners.size() == custPartnersToAdd.size()){
                    for (Integer i=0; i<custPartnersToAdd.size(); i++){                                                         
                        custPartnersToAdd[i].PartnerID__c = partners[i].Id; 
                    }
                }
            } catch (Exception e){
                if(e.getMessage().contains('account to cannot be opportunity account')) {
                    for(Partner__c custPartner:custPartnersToAdd){
                        custPartner.addError('Partner Account cannot be Opportunity Account');
                    }
                }else{
                    for(Partner__c custPartner:custPartnersToAdd){
                        custPartner.addError(e.getMessage());
                    }
                }
            }
        }
    }
    
    public static void deletePartner(List<Partner__c> custPartnersToDelete){
        Set<Id> partnerIds = new Set<Id>();
        for (Partner__c custPartner:custPartnersToDelete){
            if (custPartner.PartnerID__c != ''){
                partnerIds.add(custPartner.PartnerID__c);
            }
        }
        
        List<Partner> partnersToDelete = [SELECT Id FROM Partner WHERE Id IN :partnerIds];
        if (partnersToDelete.size() > 0){
            delete partnersToDelete;
        }
    }

}