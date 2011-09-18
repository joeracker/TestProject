public with sharing class contentCtrl {

	String category 	= '';
	String subCategory	= '';
	
	String  id;
	
	Boolean isUS;
	
	public Boolean fromSidebar;
	
	public Boolean getfromSidebar(){
		String srcStr = ApexPages.currentPage().getParameters().get('src');
		if(srcStr == 'sb'){
			return true;
		}
		return false;
	}
	
	public PRM_Page__c prmContent;

	public List<Attachment> attList;

	public PRM_Page__c getprmContent(){
		if(prmContent != null){
			return prmContent;
		}
		return null;
	}
	
	public List<Attachment> getattList(){
		attList 	= new List<Attachment>();
		attList 	= [Select id, Name, CreatedDate From Attachment Where ParentId = :id  order by LastModifiedDate desc];
		if(attList.size() > 0){
			return attList;
		}
		return null;
	}

	public contentCtrl(ApexPages.StandardController controller) {
       
       category 	= ApexPages.currentPage().getParameters().get('cat');
       subCategory	= ApexPages.currentPage().getParameters().get('subcat');
    
       UserProfileGetter upg = new UserProfileGetter();
       
       isUS = upg.isUS;
       
       if(category != null && subCategory != null){
	        List<PRM_Page__c> listPRM = new List<PRM_Page__c>();
	        listPRM = [Select id, Name, Subject__c, Page_Category__c, Page_Subcategory__c, Content__c, Links_Title__c, Version__c
	        		   From   PRM_Page__c
	        		   Where  Page_Category__c 	 = :category 
	        		    And   Page_Subcategory__c = :subCategory
	        		   Limit  2  
	        		  ];
			if(listPRM.size() > 0){
				
				if(listPRM.size() == 1){
					prmContent = listPRM[0];
				}
				
				else{
					for(PRM_Page__c prm : listPRM){
						if(prm.Version__c != null){
							if((prm.Version__c == 'US' && isUS) || (prm.Version__c == 'UK' && !isUS)){
								prmContent = prm;
							}
						}		
					}
				}
				
				id = prmContent.id;
			}       	
       }
    }

}