public with sharing class contentProductsCtrl {

	String category 	= '';
	String subCategory	= '';
	
	String id;
	
	Boolean isUS;
	
	public Boolean isTest = false;
	
	public PRM_Page__c prmContent;

	List<Attachment> attList;

	public List<Attachment> managedHostingList;
	public List<Attachment> privateCloudHostingList;
	public List<Attachment> cloudHostingList;
	public List<Attachment> emailAndAppHostingList;

	public PRM_Page__c getprmContent(){
		if(prmContent != null){
			return prmContent;
		}
		return null;
	}
	
	public List<Attachment> getmanagedHostingList(){
		if(managedHostingList != null){
			if(managedHostingList.size() > 0){
				return managedHostingList;
			}
		}
		return null;
	}
	
	public List<Attachment> getprivateCloudHostingList(){
		if(privateCloudHostingList != null){
			if(privateCloudHostingList.size() > 0){
				return privateCloudHostingList;
			}
		}
		return null;
	}
	
	public List<Attachment> getcloudHostingList(){
		if(cloudHostingList != null){
			if(cloudHostingList.size() > 0){
				return cloudHostingList;
			}
		}
		return null;
	}
	
	public List<Attachment> getemailAndAppHostingList(){
		if(emailAndAppHostingList != null){
			if(emailAndAppHostingList.size() > 0){
				return emailAndAppHostingList;
			}
		}
		return null;
	}
	
	public void retrieveAttachments(){
		attList 	= new List<Attachment>();
		attList 	= [Select id, Name, CreatedDate From Attachment Where ParentId = :id Order by LastModifiedDate desc];
		
		if(attList.size() > 0){
			
			managedHostingList 		= new List<Attachment>();
			privateCloudHostingList = new List<Attachment>();
			cloudHostingList 		= new List<Attachment>();
			emailAndAppHostingList 	= new List<Attachment>();
			
			for(Attachment a : attList){
				String aName = a.Name.substring(0, a.Name.indexOf('_'));
				if(aName == 'MH'){
					managedHostingList.add(a);	
				}
				else if(aName == 'PCH'){
					privateCloudHostingList.add(a);
				}
				else if(aName == 'CH'){
					cloudHostingList.add(a);
				} 
				else if(aName == 'EAH'){
					emailAndAppHostingList.add(a);
				} 
			}
		}
	}

	public contentProductsCtrl(ApexPages.StandardController controller) {
       category 	= ApexPages.currentPage().getParameters().get('cat');
       subCategory	= ApexPages.currentPage().getParameters().get('subcat');
       
       UserProfileGetter upg = new UserProfileGetter();
       
       if(isTest){
            isUS = upg.isUS;
       }
       else{
       		isUS = true;
       }
       
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
				retrieveAttachments();
			}       	
       }
    }

}