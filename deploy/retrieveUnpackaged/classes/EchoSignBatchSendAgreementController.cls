public with sharing class EchoSignBatchSendAgreementController {
    public String sessionID {get;set;}
    public String serverURL {get;set;}
    
	public boolean isProcessing {get;set;}
	public boolean isPreProcessing {get;set;}
	public boolean isPostProcessing {get;set;}
	public boolean ischeckNewConvertedCount {get;set;}
	public boolean isStep1 {get;set;}
	public boolean isStep2 {get;set;}
	public boolean isStep3 {get;set;}
	public boolean isFailed {get;set;}
	public boolean isSuccess {get;set;}
	public string strJob1 {get;set;}
	public string strJob2 {get;set;}
	public string strJob3 {get;set;}
	public string strBECJob1 {get;set;}	
	public string strBECJob2 {get;set;}
	
	public string whichMethod {get;set;}
	
	public Map<ID,AsyncApexJob> myJobs = new Map<ID,AsyncApexJob>();
	//public Set<ID> myConvertedIds {get;set;}	
	public List<wrapper> lstJobs = new List<wrapper>();
	public List<echosign_dev1__SIGN_Agreement__c> myListNew {get;set;}
	Map<String, Schema.SObjectField> oldAssign;// = Schema.SObjectType.SIGN_Agreement__c.fields.getMap();
	Map<String, Schema.SObjectField> newAssign = Schema.SObjectType.echosign_dev1__SIGN_Agreement__c.fields.getMap();
	//INFW_SetControllerClass setcon;
	//INFW_SetControllerClass setconNew;
	string limitsize = '';
	public boolean istest = false;
	public boolean istest2 = false;
	//public INFW_SetControllerClass setCon {get;set;}
	//public INFW_SetControllerClass setConNew {get;set;}
	public EchoSignBatchSendAgreementController(){
		string strQuery = 'Select Id from echosign_dev1__SIGN_Agreement__c Limit 1';
		List<sObject> myObjects = Database.query(strQuery);
		// Get the token for the account
		Schema.sObjectType tokenA = myObjects.getSObjectType();
		Schema.DescribeSObjectResult r = tokenA.getDescribe();
		oldAssign = r.fields.getMap();

		isStep1=true;
	}
			
  
	public PageReference convertEchosign()
    {
		if(istest || istest2)
			limitsize = 'Limit 10';
		if(strJob1==null){
			isProcessing = true;
	        EchoSignBatchSendAgreements bcm = new EchoSignBatchSendAgreements();
	        
	        map<string, sobjectfield> fieldmap = oldAssign;
	        string strfield='';
	        integer count = 0;   
	        for (sobjectfield f : fieldmap.values()) 
	        {
	            if(count == 0)
	                strfield = f.getdescribe().name;
	            else
	                strfield += ', ' + f.getdescribe().name;
	            count++;
	        }               
	        bcm.query='Select ' + strfield + 
	        (whichMethod=='Send' ? ' From echosign_dev1__SIGN_Agreement__c WHERE echosign_dev1__Status__c=\'Draft\'' : ' From echosign_dev1__SIGN_Agreement__c WHERE echosign_dev1__OwnerId = \'00550000001iWvBAAU\' and echosign_dev1__Status__c=\'Out for Signature\'');
	        bcm.query+= ' ' + limitsize;
	        bcm.sessionID = sessionID;
	        bcm.serverURL = serverURL;
	        bcm.whichMethod = whichMethod;
	        
	        strJob1 = Database.executeBatch(bcm,1);  
	        wrapper w = new wrapper();
	        w.jobName = (whichMethod=='Send' ? 'Sending Draft Agreement records' : 'Sending Agreement Reminders');
	        w.jobId = strJob1;
	        lstJobs.add(w);		
		}	
		if(myJobs.get(strJob1)!=null && myJobs.get(strJob1).Status=='Completed' && myJobs.get(strJob1).ExtendedStatus==null){					
			isPostProcessing = true;
		}else{
			if(myJobs.get(strJob1)!=null && (myJobs.get(strJob1).Status=='Failed' || myJobs.get(strJob1).Status=='Aborted')){
				isProcessing = false;
				isFailed = true;
				Apexpages.addMessage(new ApexPages.Message(ApexPages.Severity.FATAL, (whichMethod=='Send' ? 'Failure Sending Draft Agreement records. ' : 'Failure Sending Agreement Reminders. ')+ myJobs.get(strJob1).ExtendedStatus));
			}
		}			
		return null;              	
    }
 
 	public PageReference finish(){
 		return new PageReference('/home/home.jsp');
 	}    
   public List<wrapper> getJobs()
   {
   		myJobs = new Map<ID,AsyncApexJob>();  		
		for(wrapper y : lstJobs){		   			
	   		for(AsyncApexJob a : [Select ExtendedStatus, Id, Status, NumberOfErrors, JobItemsProcessed, TotalJobItems, CreatedBy.Email from AsyncApexJob where Id =: y.jobId]){
	   			myJobs.put(a.Id,a);
	   			y.job = a; 
	   		}  
   		}	 
   		return lstJobs;
   }
   
    public class wrapper {
	    public AsyncApexJob job {get; set;}
	    public string jobName {get; set;}
	    public ID jobId {get; set;}
	    public integer ordinal {get; set;}
    }   
}