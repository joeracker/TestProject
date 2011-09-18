trigger sharetoPartnerUser on Case(after update) 
{ 
List<CaseShare> caseShare = new List<CaseShare>();
for(Case c:Trigger.new) 
{    
if(c.Reason == 'General Partner Portal Question' || c.Reason == 'Portal Tools' || c.Reason == 'Partner Compensation' || c.Reason == 'Partner Agreements' || c.Reason == 'Login Issues')    
{                     
CaseShare caseSharePartner = new CaseShare();            
caseSharePartner.CaseAccessLevel = 'Read';            
caseSharePartner.CaseId = c.id;           
caseSharePartner.UserOrGroupId = c.CreatedById;            
caseShare.add(caseSharePartner);               
} 


system.debug('@@@@@@@@@@@@Contact ID' + User.Name);

List<User> contactUser = new List<User>();
contactUser = [select u.ContactId from User u where u.Id = :c.CreatedById];

if(Trigger.old[0].OwnerId != Trigger.new[0].OwnerId)
{ 
if(contactUser[0].ContactId != c.ContactId)
{
insert caseShare;
}

}

}
}