global class PortalUserCreatorUtil {

  global static List<User> builUserList(Id prmUK, Id prmUS, Map<Id, Id> accountRoleMap, Map<Id, Contact> contactMap, Map<Id, Boolean> userVersionMap){
    
    Id      profId;
    Id      accountId;
    String userVer;
    String budget;
    String fname;
    String lname;
    String alias;
    String email;
    String localeKey;
    String timezoneSidKey;
    String currencyISOCode;
    
    List<User> newPortalUsers = new List<User>();
    
    for(Id conId :userVersionMap.keySet()){
    
      User newUser = new User();
    
      if(userVersionMap.get(conId)){ // US Portal User
        profId       = prmUS;
        budget       = 'US Sales';
        localeKey    = 'en_US';
        timezoneSidKey  = 'America/Chicago';
        currencyISOCode = 'USD';
        userVer      = '.US';
      }
      else{
        profId       = prmUK;
        budget       = 'UK Sales';
        localeKey    = 'en_GB';
        timezoneSidKey  = 'Europe/London';
        currencyISOCode = 'GBP';
        userVer      = '.UK';
      }
    
      fname     = contactMap.get(conId).FirstName;
      lname     = contactMap.get(conId).LastName;
      email     = contactMap.get(conId).Email;
      alias     = userAlias(fname, lname, conId);
      accountId  = accountRoleMap.get(contactMap.get(conId).AccountId); 
      
      if(accountId != null){
        newUser.UserRoleId = accountRoleMap.get(contactMap.get(conId).AccountId);
      }
        
      if(fname != null){
        newUser.FirstName = fname;
      }
      
      newUser.ContactId      = conId;
      newUser.LastName       = lname;
      newUser.Alias         = alias;
      newUser.CommunityNickname  = alias;
      newUser.ProfileId       = profId;
      newUser.Budget__c       = budget;
      newUser.Email        = email;    
      newUser.isActive       = true;
      newUser.Username            = email + '.raxprm';
      newUser.LanguageLocaleKey  = 'en_US';
      newUser.EmailEncodingKey    = 'UTF-8';
      newUser.LocaleSidKey    = localeKey;
      newUser.TimeZoneSidKey    = timezoneSidKey;
      newUser.CurrencyIsoCode    = currencyISOCode;
      
      Database.DMLOptions dmo = new Database.DMLOptions();
      dmo.EmailHeader.triggerUserEmail = true;
      
      newUser.setOptions(dmo);
      
      newPortalUsers.add(newUser);
    }
    system.debug('@@' + newPortalUsers);
    return newPortalUsers;
  }
  
  static String userAlias(String fname, String lname, String conId){
    
    String alias = '';
    
    if(fname != null){
      alias += fname.substring(0, 1); 
    }
    
    if(lname.length() > 4){
      alias += lname.substring(0, 3);
    }
    else{
      alias += lname;  
    }
    alias += conId.substring(conId.length()-6, conId.length()-3);
    
    System.debug('@@alias ' +alias);
    
    return alias;
  } 

}