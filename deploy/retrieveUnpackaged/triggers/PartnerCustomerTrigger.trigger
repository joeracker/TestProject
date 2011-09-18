trigger PartnerCustomerTrigger on Partner__c (before insert, before delete) {
    
    List<Partner__c> custPartnersToAdd = new List<Partner__c>();
    List<Partner__c> custPartnersToDelete = new List<Partner__c>();
    Set<Id> OpptyIds = new Set<Id>();
    
    if (Trigger.isDelete){
        for (Partner__c custPartner:Trigger.old){
            custPartnersToDelete.add(custPartner);
            OpptyIds.add(custPartner.Opportunity__c);
        }
        
    } else if (Trigger.isInsert){
        for (Partner__c custPartner:Trigger.new){
            custPartnersToAdd.add(custPartner);
            OpptyIds.add(custPartner.Opportunity__c);
        }
    }
    
    
    if (custPartnersToAdd.size()>0){
        CustomPartner.addPartner(custPartnersToAdd);
    }
    if (custPartnersToDelete.size()>0){
        CustomPartner.deletePartner(custPartnersToDelete);
    }
    if (OpptyIds.size()>0){
        OpptyPartner.UpdateOpptyPartnerFlag(OpptyIds);
    }
    
    

}