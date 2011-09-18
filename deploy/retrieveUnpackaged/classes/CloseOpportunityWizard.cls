public without sharing class CloseOpportunityWizard {

    //The Account
    private Id accountId;
    public Account currentAccount {get;set;}
    
    //The Opportunity
    private Id opptyId;
    public Opportunity currentOppty {get;set;}
    
    //The Contacts
    private Id primaryContactId;
    public AccountContactRoleWrapper currentPrimaryContactRole {get;set;}   
    public List<Contact> relatedContacts {get;set;} 
    public Map<String,AccountContactRoleWrapper> accountContactRoleMap {get;set;}
    public String selectedAccountContactRoleId {get;set;}
    public String selectedContactId {get;set;}
    public Boolean editMode {get;set;}
    
    //The PMQuotes
    public List<PM_Quote__c> opptyPMQuotes;
    
    //Helper Variable for the page
    public Boolean ownerRequiresTaxId {get;set;}
    public User opptyOwner {get;set;}
    public String opptyOwnerRoleName {get;set;}
    
    //Configuration variables
    public String opptyRecordType;  
    public Close_Opportunity_Wizard_Properties__c wizardProperties;
    
    //The Page of the Wizard
    public Integer currentPage {get;set;}
    public Integer currentStep;
    
    public Integer getCurrentStep() {
        return currentPagePointer + 1;
    }
    
    public Integer lastPage {get;set;}
    private Integer currentPagePointer;
    private List<String> pageOrderList;
    
    //Gets the Page Order List
    public void setPageOrder() {        
        pageOrderList = new List<String>();
        Boolean foundErrorInPages = false;
        
        if (this.wizardProperties == null) {
            wizardProperties = getWizardProperties();
        }
        //ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'page from wizard = ' + wizardProperties.Page_Order__c));
        if (wizardProperties != null && wizardProperties.Page_Order__c != null) {
            String pageOrder = wizardProperties.Page_Order__c;
            pageOrderList = pageOrder.split(';');
            //ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'page list = ' + pageOrderList));          
            for (String page : pageOrderList) {
                try {
                    Integer pageInt = Integer.valueOf(page);
                } catch (Exception exp) {
                    //ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'page list exception = ' + exp.getMessage()));
                    foundErrorInPages = true;
                    break;
                }
            }
        }
        if (foundErrorInPages || wizardProperties == null || wizardProperties.Page_Order__c == null) {
            pageOrderList = new List<String>();
            //pageOrderList.add('1');
            //pageOrderList.add('2');           
            //pageOrderList.add('3');           
            pageOrderList.add('4');         
        }
        lastPage = pageOrderList.size();
    }
    
    //Gets the Configuration settings
    public Close_Opportunity_Wizard_Properties__c getWizardProperties() {
        if(wizardProperties == null && currentOppty != null) {
            List<Close_Opportunity_Wizard_Properties__c> allWizardProperties = Close_Opportunity_Wizard_Properties__c.getAll().values();
            for(Close_Opportunity_Wizard_Properties__c wp : allWizardProperties) {
                String recordTypeId = (String)currentOppty.RecordTypeId;                
                if(recordTypeId.startsWith(wp.Opportunity_Record_Type_Id__c)) {
                    this.wizardProperties = wp;
                }
            }
        }
        return wizardProperties;
    }
    
    //Getters and Setters
    public List<AccountContactRoleWrapper> getAccountContactRoles() {
        if(accountContactRoleMap == null || accountContactRoleMap.size() == 0) {
            fetchContactObjects();
        }
        return accountContactRoleMap.values();
    }
    
    public String getOpptyRecordType() {
        if( opptyRecordType == null ) {
            Schema.DescribeSObjectResult d = Schema.SObjectType.Opportunity;
            Map<Id,Schema.RecordTypeInfo> rtMapById = d.getRecordTypeInfosById();
            Schema.RecordTypeInfo rtById = rtMapById.get(currentOppty.RecordTypeId);        
            opptyRecordType = rtById.getName();
        }
        return opptyRecordType;
    }
    
    //A helper method used to retrieve every field from an Object
    public List<SObject> getFullSObject(Set<String> fieldNames, String objectName, String whereClause) {
        if(fieldNames == null) return null;
        
        String allFields;
        for(String fieldName : fieldNames) {
            if(allFields == null) {
                allFields = fieldName;
            } else {
                allFields = allFields + ',' + fieldName;
            }
        }
        System.debug('allFields = ' + allFields);
        
        String qry = 'SELECT ' + allFields + ' FROM ' + objectName;
        
        if(whereClause != null) {
            if(whereClause.contains('WHERE')) {
                if(whereClause.startsWith(' WHERE ')) {
                    qry = qry + whereClause;
                } else {
                    qry = qry + ' ' +whereClause;
                }
            } else {
                qry = qry + ' WHERE ' + whereClause;
            }
        }
        System.debug('The query = ' + qry);
        //ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'Query = ' + qry));
        List<SObject> fullObjects = Database.query(qry);
        //ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'fullObjects.size() = ' + fullObjects.size()));
        return fullObjects;
    }
    
    public PageReference refetchContactObjects() {
        accountContactRoleMap = null;
        fetchContactObjects();
        return null;
    }
    
    //Retrieves the related Contacts
    public void fetchContactObjects() {     
        System.debug('BEGIN fetchContactObjects');
        //Uncomment to debug
        //ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'before primaryContactId = ' + primaryContactId));
        //ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'before currentPrimaryContactRole = ' + currentPrimaryContactRole));
                                
        if(this.currentAccount == null || this.currentAccount.Id == null) {
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Failed to find related Account.'));    
        } else if (this.accountContactRoleMap == null || this.accountContactRoleMap.size() == 0){
            accountContactRoleMap = new Map<String,AccountContactRoleWrapper>();
            this.primaryContactId = null;
            this.currentPrimaryContactRole = null;
            //Map<String, Schema.SObjectField> fieldMap = Schema.SObjectType.Rackspace_Contacts__c.fields.getMap();
            //Set<String> fieldNames = new Set<String>();
            /*
            fieldNames.add('Rackspace_Contact__r.FirstName');
            fieldNames.add('Rackspace_Contact__r.LastName');
            fieldNames.add('Rackspace_Contact__r.Phone');
            //fieldNames.add('Rackspace_Contact__r.Fax');
            fieldNames.add('Rackspace_Contact__r.Email');
            fieldNames.add('Rackspace_Contact__r.MailingStreet');
            fieldNames.add('Rackspace_Contact__r.MailingState');
            fieldNames.add('Rackspace_Contact__r.MailingCity');
            fieldNames.add('Rackspace_Contact__r.MailingPostalCode');
            fieldNames.add('Rackspace_Contact__r.MailingCountry');
            */          
            //fieldNames.addAll(fieldMap.keySet());
            //List<SObject> tmpList = getFullSObject(fieldNames, 'Rackspace_Contacts__c',' WHERE Rackspace_Account__c = \'' + this.currentAccount.Id + '\'');
            
            List<Rackspace_Contacts__c> tmpList = [Select r.Ticket_Notify__c, r.Role__c, r.Rackspace_Contact__c, r.Rackspace_Account__c, r.Primary_Decision_Maker__c, r.Name, r.Id 
                                                   From Rackspace_Contacts__c r
                                                   Where r.Rackspace_Account__c = :this.currentAccount.Id];
            
            //Will hold the query results for contacts
            Map<Id,Contact> contactMap = new Map<Id,Contact>();
            
            String contactIds = null;
            List<Id> contactIdsList = new List<Id>();
            
            if(tmpList != null && tmpList.size() > 0) {
                //Get Contact Ids
                for(Integer i = 0; i < tmpList.size(); i++) {               
                    Rackspace_Contacts__c acr = tmpList[i];
                    if(acr.Rackspace_Contact__c != null) {
                        
                        contactIdsList.add(acr.Rackspace_Contact__c);
                                            
                        if(contactIds == null) {
                            contactIds = '\'' + (String)acr.Rackspace_Contact__c + '\'';
                        } else {
                            contactIds = contactIds + ',' + '\'' + (String)acr.Rackspace_Contact__c + '\'';
                        }
                    }
                }
                
                //If Contacts Ids get Contacts into a Map
                if(contactIds != null) {
                    //fieldMap = Schema.SObjectType.Contact.fields.getMap();
                    //fieldNames = new Set<String>();
                    //fieldNames.addAll(fieldMap.keySet());
                    //List<SObject> tmpContactList = getFullSObject(fieldNames, 'Contact',' WHERE Id IN (' + contactIds + ')');
                    List<Contact> tmpContactList = [Select c.Title, c.RecordTypeId, c.Phone, c.Name, c.MobilePhone, c.MailingStreet, c.MailingState, c.MailingPostalCode, c.MailingCountry, c.MailingCity, c.LastName, c.FirstName, c.Email, c.AccountId 
                                                    From Contact c
                                                    Where c.Id IN :contactIdsList];
                    if(tmpContactList != null && tmpContactList.size() > 0) {                   
                        for(Contact tmpContact : tmpContactList) {
                            //Contact c = (Contact)tmpContact;
                            contactMap.put(tmpContact.Id,tmpContact);
                        }   
                    } else {
                        ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'No related contacts found.'));  
                    }
                }
                
                //For each Contact Role create a wrapper with the contact
                for(Integer i = 0; i < tmpList.size(); i++) {
                    Rackspace_Contacts__c acr = (Rackspace_Contacts__c)tmpList[i];

                    if(accountContactRoleMap == null) {
                        accountContactRoleMap = new Map<String,AccountContactRoleWrapper>();
                    }
                    AccountContactRoleWrapper acrWrapper = new AccountContactRoleWrapper(acr,contactMap.get(acr.Rackspace_Contact__c));
                    accountContactRoleMap.put((String)acr.Id,acrWrapper);
                    if(acr.Role__c == 'Primary Contact') {
                        this.primaryContactId = acr.Rackspace_Contact__c;
                        this.currentPrimaryContactRole = acrWrapper;
                    }
                }
            } else {
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'No Account Contact Roles Defined.'));   
            }       
        } else {
            //Uncomment to debug
            //ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'this.accountContactRoleMap != null'));
        }
        
        //Uncomment to debug
        //ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'after primaryContactId = ' + primaryContactId));
        //ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'after currentPrimaryContactRole = ' + currentPrimaryContactRole));    
    }
    
    //Retrieves the Opportunity and the related Account
    //Ensures a re-query for the data
    public void fetchOpptyAndAccountObjects(Boolean fullRefresh) {
        if(fullRefresh) {
            this.currentOppty = null;
            this.currentAccount = null;
        }
        fetchOpptyAndAccountObjects();
    }
    
    //Retrieves the Opportunity and the related Account
    public void fetchOpptyAndAccountObjects() {

        //Opportunity
        if(this.opptyId == null) {
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Failed to find opportunity.'));    
        } else if(this.currentOppty == null){
            
            Map<String, Schema.SObjectField> fieldMap = Schema.SObjectType.Opportunity.fields.getMap();
            Set<String> fieldNames = new Set<String>();
            fieldNames.addAll(fieldMap.keySet());
            List<SObject> tmpList = getFullSObject(fieldNames, 'Opportunity',' WHERE Id = \'' + this.opptyId + '\'');
            if(tmpList != null && tmpList.size() == 1) {
                this.currentOppty = (Opportunity)tmpList[0];    
            } else {
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Failed to find opportunity.'));    
            }       
        }
        
        //Opportunity Owner Role
        if(this.opptyId == null) {
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Failed to find opportunity.'));    
        } else if(this.opptyOwner == null){
            Map<String, Schema.SObjectField> fieldMap = Schema.SObjectType.User.fields.getMap();
            Set<String> fieldNames = new Set<String>();
            fieldNames.addAll(fieldMap.keySet());
            List<SObject> tmpList = getFullSObject(fieldNames, 'User',' WHERE Id = \'' + currentOppty.OwnerId + '\'');
            if(tmpList != null && tmpList.size() == 1) {
                this.opptyOwner = (User)tmpList[0]; 
            } else {
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Failed to find opportunity owner.'));  
            }       
        }
        
        try{
            UserRole ownerRole = [SELECT Name FROM UserRole WHERE Id = :opptyOwner.UserRoleId LIMIT 1];
            this.opptyOwnerRoleName = ownerRole.Name;
            if(opptyOwnerRoleName.contains('EMEA') || opptyOwnerRoleName.contains('Benelux')) {
                ownerRequiresTaxId = true;
            }
        } catch (Exception exp) {
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'Failed to find opportunity owner\'s Role.'));   
        }
        
        
        if(currentOppty == null || currentOppty.AccountId == null) {
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'No related Account found.'));
        } else if(this.currentAccount == null){     
            //Account
            Map<String, Schema.SObjectField> fieldMap = Schema.SObjectType.Account.fields.getMap();
            Set<String> fieldNames = new Set<String>();
            fieldNames.addAll(fieldMap.keySet());
            List<SObject> tmpAcctList = getFullSObject(fieldNames, 'Account',' WHERE Id = \'' + currentOppty.AccountId + '\'');
            if(tmpAcctList != null && tmpAcctList.size() == 1) {
                this.currentAccount = (Account)tmpAcctList[0];  
            } else {
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'No related Account found.'));  
            }
        }
    }
    
    //Gets the PM Quotes
    public List<PM_Quote__c> getOpptyPMQuotes() {
        //Opportunity
        if(this.opptyId == null) {
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Failed to find opportunity.'));    
        } else if(this.opptyPMQuotes == null){
            
            Map<String, Schema.SObjectField> fieldMap = Schema.SObjectType.PM_Quote__c.fields.getMap();
            Set<String> fieldNames = new Set<String>();
            fieldNames.addAll(fieldMap.keySet());
            List<SObject> tmpList = getFullSObject(fieldNames, 'PM_Quote__c',' WHERE Opportunity__c = \'' + this.opptyId + '\'');
            if(tmpList != null) {
                this.opptyPMQuotes = (List<PM_Quote__c>)tmpList;    
            } else {
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'No PM Quotes found for this opportunity.'));
                //TODO go to next page...   
            }       
        }
    
        return opptyPMQuotes;
    }
    
    /* ************************
     * CONSTRUCTOR
     * ************************
    */
    public CloseOpportunityWizard(ApexPages.StandardController controller) {        
        if(controller != null) {
            this.opptyId = controller.getId();
        }
        
        this.ownerRequiresTaxId = false;
        
        //Pre-Fetch The Opportunity and Account Object's Fields
        fetchOpptyAndAccountObjects();
        
        this.wizardProperties = getWizardProperties();
        setPageOrder();
        currentPagePointer = 0;
        currentPage = Integer.valueOf(pageOrderList[currentPagePointer]);
                
        String pageParam = ApexPages.currentPage().getParameters().get('page');
        if(pageParam != null && pageParam.length() > 0) {
            currentPage = Integer.valueOf(pageParam);
        }
        
        //Uncomment to debug
        //ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'currentPagePointer = ' + currentPagePointer));
        //ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'pageOrderList = ' + pageOrderList));
        //ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,'pageOrderList[currentPagePointer] = ' + pageOrderList[currentPagePointer]));      
    }
    
    //Navigation
    public PageReference goToFirstPage() {
        //First validate the Opportunity
        if ( !ClosedWonUtility.validateStage(currentOppty, currentOppty) ) {
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'You can not close an Opportunity for which you have not set to Validate, please choose Validate and resave your opportunity before continuing.'));
            return null;
        }
         
        //Second force validation rules to fire
        try{
            currentOppty.WantToCloseAndForceValidation__c = true;
            update currentOppty;
        } catch (Exception exp) {
            System.debug('goToFirstPage ERROR: ' + exp.getMessage());
            return null;
        }   
        
        if(pageOrderList == null) {
            setPageOrder();
        }
        String newPage = '/apex/CloseOpportunityPage' + pageOrderList[currentPagePointer];
        PageReference nextPage = new PageReference( newPage );      
        if(currentOppty != null && currentOppty.Id != null) {
            nextPage.getParameters().put('id',currentOppty.Id);
        }       
        nextPage.getParameters().put('page',pageOrderList[currentPagePointer]);
        nextPage.setRedirect(true);
        return nextPage;
    }
   
    private PageReference getNextPage(){
        //pageOrderList contains which page to go to next
        
        //What is the next page?
        currentPagePointer++;
        //Set currentPage to be the next page
        currentPage = Integer.valueOf(pageOrderList[currentPagePointer]);
        PageReference nextPage = new PageReference( '/apex/CloseOpportunityPage' + pageOrderList[currentPagePointer]);      
        nextPage.getParameters().put('id',currentOppty.Id);
        nextPage.getParameters().put('page',pageOrderList[currentPagePointer]);  
        return  nextPage;   
    }


    public PageReference priorPage() {
        System.debug('*** priorPage: currentPagePointer = ' + currentPagePointer);
        //pageOrderList contains which page to go to next
        
        //What is the prior page?
        currentPagePointer--;
        //Set currentPage to be the next page
        if(currentPagePointer >= 0) {
            currentPage = Integer.valueOf(pageOrderList[currentPagePointer]);
            PageReference nextPage = new PageReference( '/apex/CloseOpportunityPage' + pageOrderList[currentPagePointer]);      
            nextPage.getParameters().put('id',currentOppty.Id);
            nextPage.getParameters().put('page',pageOrderList[currentPagePointer]);  
            return  nextPage;
        } else if(currentOppty != null && currentOppty.Id != null) {
            String newPageURL = '/' + currentOppty.Id;                     
            System.debug('******** newPageURL ******** : ' + newPageURL);                
            PageReference nextPage = new PageReference(newPageURL);      
            nextPage.setRedirect(true);
            currentPage = 1;
            return nextPage;
        }
        ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Prior page not found. Please cancel and start over.'));    
        return null;        
    }    
    
    public PageReference saveAndNext() {
        System.debug('currentPage = ' + currentPage);
        
        String validation;                
        if(currentPage == 1) {
            //CloseOpportunityWizardValidations VALIDATIONS 
            validation = CloseOpportunityWizardValidations.BeforeLeaving_Page1(currentAccount, currentOppty); 
            if (validation != 'PASS'){              
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,validation)); 
                return null;
            }
            //END VALIDATION
            
            // Account
            update currentAccount;
            fetchOpptyAndAccountObjects();                  
            return getNextPage();
            
        } else if(currentPage == 2) {
            //CloseOpportunityWizardValidations VALIDATIONS 
            validation = CloseOpportunityWizardValidations.BeforeLeaving_Page2(currentAccount, currentOppty); 
            if (validation != 'PASS'){
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,validation));
                return null;
            }
            //END VALIDATION
            
            // Contacts
            //Verify there is at least one Primary Contact, and only one Primary Contact,
            if(accountContactRoleMap == null || accountContactRoleMap.size() == 0 || this.primaryContactId == null) {
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'You must have a Primary Contact in order to proceed.'));
                return null;
            }
            System.debug('At least one Primary Contact');
            //Verify that the Primary Contact has an address and there is only one of them!
            Integer primaryContactCount = 0;
            
            for(AccountContactRoleWrapper acw : accountContactRoleMap.values()) {
                System.debug('acw = ' + acw);
                System.debug('acw.getRackspace_Contact() = ' + acw.getRackspace_Contact());
                System.debug('LOOP: primaryContactCount = ' + primaryContactCount);             
                if(acw.getContactRole() != null && acw.getContactRole().Role__c == 'Primary Contact') {
                    primaryContactCount++;
                    if( acw.getRackspace_Contact().MailingStreet == null || acw.getRackspace_Contact().MailingStreet == '') {
                        System.debug('Primary Contact has no Mailing Street');
                        ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Primary Contact must have a mailing address.'));
                        return null;
                    }
                    System.debug('FOUND PRIMARY: primaryContactCount = ' + primaryContactCount); 
                    if( primaryContactCount > 1 ) {
                        System.debug('More than one Primary Contact');
                        ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Must have one and only one Primary Contact.'));
                        return null;
                    }                   
                }
            }
            fetchOpptyAndAccountObjects();
            return getNextPage();
            
        } else if(currentPage == 3) {
            //CloseOpportunityWizardValidations VALIDATIONS 
            validation = CloseOpportunityWizardValidations.BeforeLeaving_Page3(currentAccount, currentOppty); 
            if (validation != 'PASS'){
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,validation));
                return null;
            }
            //END VALIDATION
            
            // Opportunity
            if (currentOppty.StageName.contains('Close')) {
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'The opportunity has already been closed. Please click cancel to return to the opportunity.'));
                return null;
            }
            try { 
                update currentOppty;
                fetchOpptyAndAccountObjects();
                return getNextPage();
            } catch (Exception exp) {
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,exp.getMessage()));
                fetchOpptyAndAccountObjects();              
                return null;
            }       
            fetchOpptyAndAccountObjects();
            return null;
            
        } else if(currentPage == 4) {
            //CloseOpportunityWizardValidations VALIDATIONS 
            validation = CloseOpportunityWizardValidations.BeforeLeaving_Page4(currentAccount, currentOppty); 
            if (validation != 'PASS'){
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,validation));
                return null;
            }
            //END VALIDATION
            
            //TODO TINA READ THIS
            // Verify and close this should always be the LAST page, so go back to the Opportunity
            /* Comment out these two lines if you want to re-fetch the data*/
            Opportunity opptyToClose = new Opportunity(Id = currentOppty.Id);
            opptyToClose.StageName = 'Closed Custom';
            
            /* Uncomment these 3 lines if you want to re-fetch the data */
            //fetchOpptyAndAccountObjects(true);
            //currentOppty.StageName = 'Closed Custom';
            //currentOppty.Probability = 100;
            
            try{
                /* Change these two lines below comment/uncomment use currentOppty if you refetch, use opptyToClose if you don't */
                //update currentOppty;
                update opptyToClose;
            }catch (Exception exp) {
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,exp.getMessage()));
                return null;    
            }
            
            String newPageURL = '/' + currentOppty.Id;
            
            // If this Oppty qualifies then redirect to a custom URL of the current User 
            
            
                                               
            if(getWizardProperties().On_Final_Close_Redirect_to_Custom_URL__c && !currentOppty.Split_Category__c.equalsIgnoreCase('Split - Secondary')) {
                //User currentUser = [SELECT onCloseOpptyGotoURL__c FROM User WHERE Id = :UserInfo.getUserId()];
                User currentUser = [SELECT onCloseOpptyGotoURL__c FROM User WHERE Id = :currentOppty.ownerId];                  
                if(currentUser.onCloseOpptyGotoURL__c != null) {
                    newPageURL = currentUser.onCloseOpptyGotoURL__c;                    
                    newPageURL = newPageURL + '&opportunity_number=' + currentOppty.Opportunity_ID__c;
                }
            }
            System.debug('******** newPageURL ******** : ' + newPageURL);
            //Debug Line: ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO,newPageURL));
            //Debug Line: return null;          
            PageReference nextPage = new PageReference(newPageURL);      
            nextPage.setRedirect(true);
            currentPage = 1;
            return nextPage;
            
        } else if(currentPage == 5) {
            //CloseOpportunityWizardValidations VALIDATIONS 
            validation = CloseOpportunityWizardValidations.BeforeLeaving_Page5(currentAccount, currentOppty); 
            if (validation != 'PASS'){
                ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,validation));
                return null;
            }
            //END VALIDATION
            
            //This is the PM Quote Page
            if(opptyPMQuotes.size() > 0) {
                //Test if there is one and only one primary
                Boolean onePrimary = false;
                for(PM_Quote__c pmQuote : opptyPMQuotes) {
                    if(pmQuote.Is_Primary__c) {
                        if(onePrimary == true) {
                            //ERROR
                            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'You may only have one primary PM Quote.'));
                            return null;
                        } else {
                            onePrimary = true;
                        }
                    }
                }
                if(!onePrimary) {
                    ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'You must mark one PM Quote as primary.'));
                    return null;
                }
                //ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Save will happen.'));            
                update this.opptyPMQuotes;
            }
            //ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Save happened.'));      
            //return null;
            return getNextPage();                      
        } else {
            if (currentPage == 6){
                //CloseOpportunityWizardValidations VALIDATIONS 
                validation = CloseOpportunityWizardValidations.BeforeLeaving_Page4(currentAccount, currentOppty); 
                if (validation != 'PASS'){
                    ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,validation));
                    return null;
                }
                //END VALIDATION
            }
            
            //There is some other page we haven't accounted for
            update currentOppty;
            update currentAccount;
            fetchOpptyAndAccountObjects();
            return getNextPage();
        }
        
        return null;
    }

    //Contact Role Methods

    //Edit
    public void makeContactRoleEditable(){
        if(accountContactRoleMap == null || accountContactRoleMap.size() == 0) {
            return;
        }
        for(AccountContactRoleWrapper acrWrapper : accountContactRoleMap.values()) {
            if( (selectedAccountContactRoleId != null && selectedAccountContactRoleId.equals((String)(acrWrapper.getContactRole().Id))) 
                || acrWrapper.isNew) {
                acrWrapper.isEditMode = true;
                editMode = true;
            } else if(acrWrapper.isEditMode){ //This indicates a cancel
                acrWrapper.rollBack();
                acrWrapper.isEditMode = false;
                editMode = false;
            } else {
                acrWrapper.isEditMode = false;
                editMode = false;
            }           
        }
        editMode = true;    
    }

    //Cancel    
    public void cancelContactRoleEdit() {
        selectedAccountContactRoleId = null;
        accountContactRoleMap = null;
        fetchContactObjects();
        editMode = false;
    }
    
    //Delete
    public void deleteContactRole() {
        if(accountContactRoleMap == null || accountContactRoleMap.size() == 0) {
            return;
        }
        for(AccountContactRoleWrapper acrWrapper : accountContactRoleMap.values()) {
            if( (selectedAccountContactRoleId != null && selectedAccountContactRoleId.equals((String)(acrWrapper.getContactRole().Id)))) {
                try {
                    delete acrWrapper.getContactRole();
                } catch(Exception exp) {
                    ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Failed to delete contact role. ERROR: ' + exp.getMessage()));
                    return;             
                }
                break;
            }
        }
        
        selectedAccountContactRoleId = null;
        accountContactRoleMap = null;
        fetchContactObjects();
        editMode = false;
    }
    
    
    //Save
    public void saveContactRole() {
        System.debug('BEGIN:saveContactRole');
        if(accountContactRoleMap == null || accountContactRoleMap.size() == 0) {
            System.debug('accountContactRoleMap is empty');
            return;
        }
        System.debug('selectedAccountContactRoleId = ' + selectedAccountContactRoleId);
        if(selectedAccountContactRoleId == null || selectedAccountContactRoleId.length() == 0) {
            System.debug('selectedAccountContactRoleId is empty');
            
            if(accountContactRoleMap.containsKey('none')) {
                System.debug('new record found');
                AccountContactRoleWrapper acrWrapper = accountContactRoleMap.get('none');
                Id acrId = acrWrapper.updateRecord(false);
                if(acrId != null) {
                    accountContactRoleMap = null;
                    fetchContactObjects();                  
                }
            } else {
                System.debug('no new record found');
                return;
            }
        } else {
            System.debug('selectedAccountContactRoleId is NOT empty');
            for(AccountContactRoleWrapper acrWrapper : accountContactRoleMap.values()) {
                if(selectedAccountContactRoleId.equals((String)(acrWrapper.getContactRole().Id))) {
                    Id acrId = acrWrapper.updateRecord(false);
                    if(acrId != null) {
                        accountContactRoleMap.put((String)acrId,acrWrapper);
                    }               
                }           
            }
        }
        
        this.primaryContactId = null;
        this.currentPrimaryContactRole = null;
        for(AccountContactRoleWrapper acrWrapper : accountContactRoleMap.values()) {
            if(acrWrapper.getContactRole().Role__c == 'Primary Contact') {
                this.primaryContactId = acrWrapper.getContactRole().Rackspace_Contact__c;
                this.currentPrimaryContactRole = acrWrapper;
            }
        }
        editMode = false;
    }

    //New Contact and New Role
    public void addNewContactWithRole() {
        if(accountContactRoleMap == null) {
            accountContactRoleMap = new Map<String,AccountContactRoleWrapper>();
        }
        AccountContactRoleWrapper acrWrapper = new AccountContactRoleWrapper(currentAccount.Id, true);
        accountContactRoleMap.put('none',acrWrapper);
        selectedAccountContactRoleId = null;
        makeContactRoleEditable();
    }
    
    //New Role with existing Contact
    public void addNewContactRole() {
        if(accountContactRoleMap == null) {
            accountContactRoleMap = new Map<String,AccountContactRoleWrapper>();
        }
        AccountContactRoleWrapper acrWrapper = new AccountContactRoleWrapper(currentAccount.Id, false);
        acrWrapper.useExistingContact = true;
        accountContactRoleMap.put('none',acrWrapper);
        selectedAccountContactRoleId = null;
        makeContactRoleEditable();
    }

    //Edit Address
    
    public PageReference editAddress() {
        if(selectedContactId == null || selectedContactId.length() == 0) {
            return null;
        }
        String sControlURL = '/servlet/servlet.Integration?scontrolCaching=1&lid=00b50000000xF76&eid=' + selectedContactId + '&ic=1';               
        PageReference nextPage = new PageReference( sControlURL );      
        return nextPage;                         
    }
    

}