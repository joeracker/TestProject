trigger Contact_AccountTeam on Contact (after delete, after insert, after update) {

    Set<Id> contactIds = new Set<Id>();
    Set<Id> accountIds = new Set<Id>();
    Set<Id> userIds    = new Set<Id>();
    
    Map<Id, Id> userMap    = new Map<Id, Id>();
    Map<Id, AccountShare>  shareMap = new Map<Id, AccountShare>();
         
    List<User>    userList = new List<User>();  
    
    List<AccountShare> insShareList = new List<AccountShare>();
    List<AccountShare> delShareList = new List<AccountShare>(); 

    List<AccountShare> extShareList = new List<AccountShare>();
    
    //List<AccountShare> insShareList = new List<AccountShare>();

    for(Integer i=0; i<(trigger.isDelete?trigger.old.size():trigger.new.size());i++){
        if(trigger.isDelete || trigger.isUpdate){
            contactIds.add(trigger.old[i].id);
            accountIds.add(trigger.old[i].AccountId); 
        }
        else if(!trigger.isDelete){
            contactIds.add(trigger.new[i].id);
            accountIds.add(trigger.new[i].AccountId);
        }
    }

    userList = [Select Id, ContactId From User Where ContactId IN :contactIds And IsActive = true];
    
    for(User usr :userList){
        userIds.add(usr.Id);
        userMap.put(usr.ContactId, usr.Id);
    }
    
    delShareList = [Select AccountId, UserOrGroupId From AccountShare Where AccountId IN :accountIds AND UserOrGroupId IN :userIds And RowCause = 'Manual'];
    
    extShareList = [Select AccountId, OpportunityAccessLevel, AccountAccessLevel, UserOrGroupId From AccountShare Where AccountId IN :accountIds AND RowCause = 'PortalImplicit'];
    
    for(AccountShare ash :extShareList){
        shareMap.put(ash.AccountId, ash);
    }
    system.debug('@@ ' + shareMap);
    if(!trigger.isDelete && trigger.isAfter){
        for(Contact con :trigger.new){
            /*if(userMap.get(con.Id) != null){
                AccountShare tempShare = new AccountShare();
                
                tempShare.AccountId                 = con.AccountId;
                tempShare.UserorGroupId             = userMap.get(con.Id);
                tempShare.AccountAccessLevel        = 'Edit';
                tempShare.OpportunityAccessLevel    = 'Read';
                
                insShareList.add(tempShare);
            }*/
            
            if(shareMap.get(con.AccountId) != null){
                AccountShare tempshare = new AccountShare();
                
                tempShare.UserOrGroupId = shareMap.get(con.AccountId).UserOrGroupId;
                tempShare.OpportunityAccessLevel = 'Read';
                tempShare.AccountAccessLevel = 'Edit';
                tempShare.AccountId = con.AccountId;
                
                insShareList.add(tempShare);
            }
        }       
    }
    system.debug('!! ' + extShareList);
    /*if(delShareList.size() > 0){
        delete delShareList;
    }
    if(insShareList.size() > 0){
        insert insShareList;
    }*/
    if(insShareList.size() > 0){
        insert insShareList;
    }   
}