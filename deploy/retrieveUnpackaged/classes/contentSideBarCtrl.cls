public with sharing class contentSideBarCtrl {

	public Boolean displaySidePanel;

	public String  contactUsAddress;
	public String  userName;  
	
	UserProfileGetter upg = new UserProfileGetter();

	public Boolean getdisplaySidePanel(){
		return upg.displaySidePanel;
	}

	public String getcontactUsAddress(){
		return upg.contactUsAddress;
	}
	
	public String getuserName(){
		if(userName != null){
			if(userName != ''){
				return userName;
			}
		}
		return '';
	}

	public contentSideBarCtrl(){
	}

}