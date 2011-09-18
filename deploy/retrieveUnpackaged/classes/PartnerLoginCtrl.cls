public with sharing class PartnerLoginCtrl {

    //SANDBOX

    private static String PORTAL_LOGIN_URL  = 'https://cs4.salesforce.com/secur/login_portal.jsp';
    private static String ID_ORG          = '00DP000000070cE';
    private static String ID_PORTALUS       = '06050000000D4ep';
    private static String ID_PORTALUK       = '06050000000D4eu';
    
    //PRODUCTION
    
    //private static String PORTAL_LOGIN_URL  = 'https://na3.salesforce.com/secur/login_portal.jsp';
    //private static String ID_ORG            = '00D500000006pEz';
    //private static String ID_PORTALUS       = '06050000000D4ep';
    //private static String ID_PORTALUK       = '06050000000D4eu';
    
    private static String START_URL         = '/home/home.jsp';
    
    public String username {get; set;}
    public String password {get; set;}
    public String urlStr   {get; set;}

    public String contactUsAddress;
    public String siteInstance;
    
    public String getcontactUsAddress(){
        String siteURL =  Site.getName();
        contactUsAddress = '';
        if(siteURL == 'Rackspace_PRM_US'){
            contactUsAddress = 'partnermarketing@rackspace.com';
        }
        else{
            contactUsAddress = 'channelmarketing@rackspace.co.uk';
        }
        return contactUsAddress;
    }
    
    public String getsiteInstance(){
        String siteURL =  Site.getName();
        siteInstance = '';
        if(siteURL == 'Rackspace_PRM_US'){
            siteInstance = 'US';
        }
        else{
            siteInstance = 'UK';
        }
        return siteInstance;
    }
    
    public PageReference loginToPortal() {
        
        PageReference portalLogin = new PageReference(PORTAL_LOGIN_URL);
        portalLogin.getParameters().put('orgId', ID_ORG);
        
        if(urlStr == 'us'){
            portalLogin.getParameters().put('portalId', ID_PORTALUS);
        }
        else{
            portalLogin.getParameters().put('portalId', ID_PORTALUK);
        }
        portalLogin.getParameters().put('un', username);
        portalLogin.getParameters().put('pw', password);
        
        
        portalLogin.getParameters().put('startURL', START_URL);
        system.debug('* ' + portalLogin);
        return portalLogin;
    }
    
    
    
    public PartnerLoginCtrl(){
    }
}