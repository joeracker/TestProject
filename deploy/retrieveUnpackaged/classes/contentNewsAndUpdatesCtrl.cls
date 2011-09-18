/*  
 * read from a feed, return a list of feed entry records
*/

public class contentNewsAndUpdatesCtrl{
    
    public Boolean isTest = false;
    
    public List<newsandupdatesBuilder> rssFeedList;
    
    public List<newsandupdatesBuilder> getrssFeedList(){
    	if(rssFeedList != null){
    		if(rssFeedList.size() > 0){
    			return rssFeedList;
    		}
    	}
    	return null;
    }
    
    String url = 'http://feeds.feedburner.com/RackspaceBlog';
   
    public contentNewsAndUpdatesCtrl(){
    	makeRequest();
    }
    
    public PageReference makeRequest()  { // leaves result in res instance member
        HttpResponse res = new HttpResponse();
        HttpRequest req = new HttpRequest();   
        req.setEndpoint(url);
        req.setMethod('GET');    
        /* avoid getting more than we can process on the callout
         * max is 32000, more will throw an exception from the server
         * we could go back for a second range, but this will give ~10 normal blog entries
         */
        req.setHeader('Range','bytes=0-30000');  // not all feeds respect this
        req.setCompressed(true);
        
        try {
            Http http = new Http();
            
            if(!isTest){
            
            	res = http.send(req);
            }
            else{
            	String testBody = '<item><title>Two More Reasons the Cloud Era Will be Open</title>' +
									  '<link>http://feedproxy.google.com/~r/RackspaceBlog/~3/KzR4T2BiTh4/</link>' +
									  '<comments>http://www.rackspace.com/blog/?p=2235#comments</comments>' +
									  '<pubDate>Thu, 21 Apr 2011 13:05:37 +0000</pubDate>' +
									  '<description>TEST</description>' +
									  '<feedburner:origLink>http://www.rackspace.com/blog/?p=2235</feedburner:origLink></item>';	
            	
            	res.setBody(testBody);
            }
            
            //if (res.getStatusCode() != 200) {
                
            //    System.debug('STATUS:'+res.getStatus());System.debug('STATUS_CODE:'+res.getStatusCode());
            //   System.debug('BODY: '+res.getBody());
            //}
            
            //else if(res.getStatusCode() == 200 || isTest){
            	
            	
            	XmlStreamReader reader = res.getXmlStreamReader();
				
			    // Read through the XML  
			    
			    rssFeedList = new List<newsandupdatesBuilder>();
			    
			    String nodeTxt  	= '';
			    
			    String titleText = '';
			    String linkText  = '';
			    String descText  = '';
			    String dateText  = '';
			    
			    Boolean titleTagged = false;
			    Boolean linkTagged  = false;
			    Boolean descTagged  = false;
			    Boolean dateTagged  = false;
			    
			    Boolean isItemBlock = false;
			    
			    while(reader.hasNext()) {
					reader.next();
					//Stop Processing if EOF is reached
	                String xTag = String.valueOf(reader.getEventType());
	                if (reader.getEventType() == XmlTag.END_DOCUMENT) {
	                   break;
	                }
				    if (reader.getEventType() == XmlTag.START_ELEMENT) {
						  nodeTxt = reader.getLocalName();
			          
			          	  if(nodeTxt == 'item'){
			          	       isItemBlock = true;
			          	  }
			          
				          if(nodeTxt == 'title' && isItemBlock){
				               reader.next();
				               if(reader.isCharacters() && reader.hasText()){
				                    titleText = reader.getText();
				               }
				               titleTagged = true;
				          }
				          if(nodeTxt == 'link' && isItemBlock){
				               reader.next();
				               if(reader.isCharacters() && reader.hasText()){
				                    linkText = reader.getText();
				               }
				               linkTagged = true;
				          }
				          if(nodeTxt == 'description' && isItemBlock){
				               reader.next();
				               if(reader.isCharacters() && reader.hasText()){
				                    descText = reader.getText();
				                    if(descText.length() > 100){
				                    	descText = descText.substring(0, 99);
				                    }
				               }
				               descTagged = true;
				          }
				          if(nodeTxt == 'pubDate' && isItemBlock){
				               reader.next();
				               if(reader.isCharacters() && reader.hasText()){
				                    dateText = formatPubDate(reader.getText());
				               }
				               dateTagged = true;
				          }
			          
			          	  if(linkTagged && descTagged && dateTagged && titleTagged){ //get values until all three got passed on
			          
					          newsandupdatesBuilder tempBuild = new newsandupdatesBuilder(
					               descText, linkText, titleText, dateText
					          );
					          rssFeedList.add(tempBuild);  
					          
					          linkTagged  = false;
					          descTagged  = false;
					          dateTagged  = false;
					          titleTagged = false;
					          
					          isItemBlock = false;
					              	
			              }
				     }
			    }
            //}
            
        } catch( System.Exception e) {
            System.debug('ERROR: '+ e);
        }
        return null;
    }
    
    public String formatPubDate(String pubDate){
    	// Assumed pubDate format is Fri, 08 Apr 2011 16:13:03 +0000'
    	String formattedDate = '';
    	String trimDate = pubDate.replace(' ', '');
    	String day	 = trimDate.substring(4, 6);
    	String month = trimDate.substring(6, 9);
    	//there should be an easier way to format than this
    	if(month=='Jan'){
    		month='01';
    	}
    	else if(month=='Feb'){
    		month='02';
    	}
    	else if(month=='Mar'){
    		month='03';
    	}
    	else if(month=='Apr'){
    		month='04';
    	}
    	else if(month=='May'){
    		month='02';
    	}
    	else if(month=='Jun'){
    		month='06';
    	}
    	else if(month=='Jul'){
    		month='07';
    	}
    	else if(month=='Aug'){
    		month='08';
    	}
    	else if(month=='Sep'){
    		month='09';
    	}
    	else if(month=='Oct'){
    		month='10';
    	}
    	else if(month=='Nov'){
    		month='11';
    	}
    	else if(month=='Dec'){
    		month='12';
    	}
    	
    	String year  = trimDate.substring(9, 13);
    	try{
    		formattedDate =  month + '-' + day + '-' + year;
    	}
    	catch(exception e){
    	}
    	return formattedDate;
    }
    
    public class newsandupdatesBuilder{
    	
    	public String title   		{get; set;}
    	public String link   		{get; set;}
    	public String description   {get; set;}
    	public String pubDate		{get; set;}
    	
    	public newsandupdatesBuilder(String description, String link, String title, String pubDate){
    		this.link			= link;
    		this.title			= title;
    		this.description	= description;
    		this.pubDate		= pubDate;
    	}
    }
}