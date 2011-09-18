public with sharing class UserProfileGetter {

    public String username { get; set; }
    
   

    public Boolean fromSidebar;

    public Boolean displaySidePanel;
    
    public String  contactUsAddress;
    
    public String textdata { get; set; }

    public String pnlMessage;
    public String pnlError;

    public Boolean isUS {get; set;}
    public Boolean isUK {get; set;}
    
    Boolean isSysAd;
    
    public Boolean getfromSidebar(){
        String srcStr = ApexPages.currentPage().getParameters().get('src');
        if(srcStr == 'sb'){
            return true;
        }
        return false;
    }
    
    public String getpnlMessage(){
        if(pnlMessage != null){
            if(pnlMessage != ''){
                return pnlMessage;
            }
        }
        return null;    
    }
    
    public String getpnlError(){
        if(pnlError != null){
            if(pnlError != ''){
                return pnlError;
            }
        }
        return null;    
    }
    
    public UserProfileGetter(){
    
        isUS    = false;
        isUK    = false;
        isSysAd = false;
        
        pnlMessage = '';
        pnlError   = '';
        
        Profile curProf = [Select Name From Profile Where Id= :UserInfo.getProfileId()];
        
        if(curProf.Name == 'Partner PRM - US'){
            isUS = true;
        }
        else if(curProf.Name == 'Partner PRM - UK'){
            isUK = true;
        }
        else if(curProf.Name == 'System Administrator'){
            isSysAd = true;
        }
    }
    
    public String getcontactUsAddress(){
        String mailToStr = '';
        if(isUS){
            mailToStr =  'mailto:partnermarketing@rackspace.com';
        }
        else if(isUK){
            mailToStr = 'mailto:channelmarketing@rackspace.co.uk';
        }
        return mailToStr;
    }

    public Boolean getdisplaySidePanel(){
        
        displaySidePanel = false;
        
        String cat    = ApexPages.currentPage().getParameters().get('cat');
        String subcat = ApexPages.currentPage().getParameters().get('subcat');
        
        if((isUS && cat == 'Cloud/Email' && subcat == 'Cloud Reseller') || isSysAd){
            displaySidePanel = true;
        }
        
        return displaySidePanel;
        
    }
    
    public PageReference emailUsername(){
        
        pnlError   = '';
        pnlMessage = '';
        
        if(username == null){ username = '';}
        
        if(username != ''){
        
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            //SANDBOX ONLY String[] toAddresses = new String[] {'rangeles@globalone.com'};
            
            String[] toAddresses = new String[] {'Kenard.horsley@rackspace.com', 'Keith.villano@rackspace.com'};
            //String[] toAddresses = new String[] {'kiran.amada@rackspace.com','michelle.vega@rackspace.com'};
            mail.setToAddresses(toAddresses);
            mail.setSubject('Cloud Customer ' + username);
            mail.setPlainTextBody('“Cloud Customer ”' + username+ ' :');
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
            pnlMessage = 'Thank you for submitting your Cloud Account information, you have successfully registered your Cloud opportunity.';
            username = '';
            

        }
        else{
            pnlError = 'Please enter your user name.';
        }    
        return null;
    
    }
    /*public pageReference emailAccountNumber(){

       //pnlMessage = '';
       
       
       
       
        if(AccountNumber != ''){
        
    
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            //SANDBOX ONLY String[] toAddresses = new String[] {'knoceda@globalone.com'};
            
            String[] toAddresses = new String[] {'Kenard.horsley@rackspace.com', 'Keith.villano@rackspace.com'};
            //String[] toAddresses = new String[] {'kiran.amada@rackspace.com'};
            mail.setToAddresses(toAddresses);
            mail.setSubject('Cloud Customer AccountNumber' + AccountNumber);
            String mailBody = '“Cloud Customer AccountNumber ” ' + AccountNumber+ ' :';
            mailBody = mailBody + '\n“Cloud Customer ”' + username+ ' :';
            mail.setPlainTextBody(mailBody);
            
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
           // pnlMessage = 'Thank You for submitting your Cloud Customer Account User Name and AccountNumber.-------------';
            
         AccountNumber = '';
         
            }
            return null;   
        } 
        */

}