public class CloseOpportunityWizardValidations {
    public static String BeforeEnteringTheWizard(){
        String validationErrorMessage = 'PASS';
        
        /* ENTER VALIDATION CODE HERE */
        
        return validationErrorMessage;
    }
    
    public static String BeforeLeaving_Page1(Account a, Opportunity o){
        String validationErrorMessage = 'PASS';
        
        /* ENTER VALIDATION CODE HERE */
        
        return validationErrorMessage;
    }
    
    public static String BeforeLeaving_Page2(Account a, Opportunity o){
        String validationErrorMessage = 'PASS';
        
        /* ENTER VALIDATION CODE HERE */        
        
        return validationErrorMessage;
    }
    
    public static String BeforeLeaving_Page3(Account a, Opportunity o){
        String validationErrorMessage = 'PASS';
        
        /* ENTER VALIDATION CODE HERE */
        /* DESCRIPTION: makes cloud ddi or username required if it is a cloud deal, 
                        as long as cloud fees are greater than 0
                        See Opportunity Validation Rule: 'Cloud_DDI_or_Username_is_required'
        */
        if(o.WantToCloseAndForceValidation__c           
            && (o.Slicehost_Fees__c > 0 || o.Mosso_Fees__c > 0 || o.Final_Opportunity_Type__c == 'Cloud' || o.Final_Opportunity_Type__c == 'Managed Cloud')
            && (o.DDI__c == null && o.Cloud_Username__c == null)){
                validationErrorMessage = 'DDI # or Cloud Username is required when there are Cloud Server fees or Cloud Sites fees entered into the opportunity.';      
        }
        //if(o.WantToCloseAndForceValidation__c
         //   && ((o.DDI__c.length()) > 8)) {
         //       validationErrorMessage = 'DDI # is not valid.  Please re-enter.';
        //}
        
        return validationErrorMessage;
    }
    
    public static String BeforeLeaving_Page4(Account a, Opportunity o){
        String validationErrorMessage = 'PASS';
        
        /* ENTER VALIDATION CODE HERE */
        
        return validationErrorMessage;
    }
    
    public static String BeforeLeaving_Page5(Account a, Opportunity o){
        String validationErrorMessage = 'PASS';
        
        /* ENTER VALIDATION CODE HERE */
        
        return validationErrorMessage;
    }
    
    public static String BeforeLeaving_Page6(Account a, Opportunity o){
        String validationErrorMessage = 'PASS';
        
        /* ENTER VALIDATION CODE HERE */
        
        return validationErrorMessage;
    }
    
}