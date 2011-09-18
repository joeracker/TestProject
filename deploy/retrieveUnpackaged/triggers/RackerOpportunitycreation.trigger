trigger RackerOpportunitycreation on Opportunity (after insert,after update) {
if(trigger.size<3){

for(Opportunity O : trigger.new){


List<Contact> contactList = new List<Contact>();

contactList = [select c.id from Contact c where c.AccountId =:O.Referrer__c];

                       Set<Id> contactIds = new Set<Id>();
                       for(Contact c:contactList)
                       {contactIds.add(c.id);}

     


                       
                       List<User> userList = new List<User>();
                       userList = [select u.id from User u where IsActive = true AND u.ContactId IN:contactIds];
                       

                       List<OpportunityShare> opportunityShare = new List<OpportunityShare>();
         
  
                               for(User us:userList)
                               {
                                      OpportunityShare opsShare = new OpportunityShare();
                                      opsShare.OpportunityAccessLevel = 'Read';
                                       opsShare.OpportunityId = trigger.new[0].id;
                                       opsShare.UserOrGroupId = us.id;
                                       opportunityShare.add(opsShare);
                               }
                               insert opportunityShare;
                               
                       }
                       
}
}