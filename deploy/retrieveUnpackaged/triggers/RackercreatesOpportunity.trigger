trigger RackercreatesOpportunity on Partner__c (after insert) {

for(Partner__c P : trigger.new){

//if(trigger.isInsert){

List<Contact> contactList = new List<Contact>();

List<User> userList = new List<User>();


contactList = [select c.id from Contact c where c.AccountId =:P.Partner_Account__c];


                       Set<Id> contactIds = new Set<Id>();
                       for(Contact c:contactList)
                       {contactIds.add(c.id);}

     


                       
                      // List<User> userList = new List<User>();
                       userList = [select u.id from User u where IsActive = true AND u.ContactId IN:contactIds];
                       

                       List<OpportunityShare> opportunityShare = new List<OpportunityShare>();
         
  
                               for(User us:userList)
                               {
                                       OpportunityShare opsShare = new OpportunityShare();
                                       opsShare.OpportunityAccessLevel = 'Read';
                                       opsShare.OpportunityId = trigger.new[0].Opportunity__c;
                                       opsShare.UserOrGroupId = us.id;
                                       opportunityShare.add(opsShare);
                               }
                               insert opportunityShare;
                       }
}