global class EchoSignBatchSendAgreements implements Database.Batchable<sObject>,Database.AllowsCallouts{
    public String query;
    public String sessionID;
    public String serverURL;
    public String whichMethod;
            
    global database.querylocator start(Database.BatchableContext BC){
        system.debug(query);
        return Database.getQueryLocator(query);
    }

        public HttpRequest preprocessAgreement(sObject a)
        {           
            system.debug(a);
            string URL = (whichMethod=='Send' ? 'https://secure.echosignforsalesforce.com/salesforce/createAgreement?callback=?' :
                'https://secure.echosignforsalesforce.com/salesforce/nudgeAgreement?callback=?');
            URL += '&Agreement_ID='+(string)a.get('ID');
            URL += '&Version=9';
            URL += '&echosign_dev1';
            URL += '&session='+sessionID;
            URL += '&organizationId='+UserInfo.getOrganizationId();          
            URL += '&server='+serverURL;
            URL += '&Status='+(string)a.get('echosign_dev1__Status__c');
            URL += '&LastEventId='+(string)a.get('echosign_dev1__LastEventId__c');
            //URL += '&signerFields=echosign_dev1__Email_Address__c';
                        
            HttpRequest req = new HttpRequest();
            req.setEndpoint(URL);
            req.setMethod('GET');
            system.debug(req);  
            return req;
        } 
        public HttpResponse calloutSend(HttpRequest req)
        {
            Http http = new Http();
            HttpResponse res = http.send(req);
            return res;
        }          
    global void execute(Database.BatchableContext BC, List<sObject> scope)
    {        
        for(sObject a : scope)
        {
            //try{
                HttpRequest req = preprocessAgreement(a);
                HttpResponse res = calloutSend(req);
                system.debug(res);
            //}catch(Exception e)
            //{
            //    system.debug(e);
            //}
        }
    }
    
    global void finish(Database.BatchableContext BC)
    {
    
    }

}