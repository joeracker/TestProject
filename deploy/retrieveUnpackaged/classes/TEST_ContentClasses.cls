@isTest
private class TEST_ContentClasses {

    static testMethod void TESTContentClasses() {
    	
    	PRM_Page__c prm = new PRM_Page__c();
    	
    	ApexPages.StandardController sc = new ApexPages.StandardController(prm);
    	
    	ApexPages.currentPage().getParameters().put('cat', 'Marketing');
    	ApexPages.currentPage().getParameters().put('subcat', 'Overview');
    	
        contentCtrl 				marketCtrl = new contentCtrl(sc);
        
        marketCtrl.getfromSidebar();
        marketCtrl.getprmContent();
        marketCtrl.getattList();
        
        
        contentNewsAndUpdatesCtrl   newsCtrl   = new contentNewsAndUpdatesCtrl();
        
        newsCtrl.isTest = true;
        
        newsCtrl.makeRequest();
        newsCtrl.getrssFeedList();
        newsCtrl.formatPubDate('Fri, 01 Jan 2011 16:13:03 +0000');
        newsCtrl.formatPubDate('Fri, 01 Feb 2011 16:13:03 +0000');
        newsCtrl.formatPubDate('Fri, 01 Mar 2011 16:13:03 +0000');
        newsCtrl.formatPubDate('Fri, 01 Apr 2011 16:13:03 +0000');
        newsCtrl.formatPubDate('Fri, 01 May 2011 16:13:03 +0000');
        newsCtrl.formatPubDate('Fri, 01 Jun 2011 16:13:03 +0000');
        newsCtrl.formatPubDate('Fri, 01 Jul 2011 16:13:03 +0000');
        newsCtrl.formatPubDate('Fri, 01 Aug 2011 16:13:03 +0000');
        newsCtrl.formatPubDate('Fri, 01 Sep 2011 16:13:03 +0000');
        newsCtrl.formatPubDate('Fri, 01 Oct 2011 16:13:03 +0000');
        newsCtrl.formatPubDate('Fri, 01 Nov 2011 16:13:03 +0000');
        newsCtrl.formatPubDate('Fri, 01 Dec 2011 16:13:03 +0000');
        
        
        ApexPages.currentPage().getParameters().put('cat', 'Products');
    	ApexPages.currentPage().getParameters().put('subcat', 'Overview');
        
        contentProductsCtrl			prodCtrl   = new contentProductsCtrl(sc);
        
        prodCtrl.isTest = true;
        
        prodCtrl   = new contentProductsCtrl(sc);
        
        prodCtrl.getprmContent();
        prodCtrl.getmanagedHostingList();
        prodCtrl.getprivateCloudHostingList();
        prodCtrl.getcloudHostingList();
        prodCtrl.getemailAndAppHostingList();
        prodCtrl.retrieveAttachments();
        
        
        contentSideBarCtrl			sideCtrl   = new contentSidebarCtrl();
        
        sideCtrl.getdisplaySidePanel();
        sideCtrl.getcontactUsAddress();
        sideCtrl.getuserName();
        
        UserProfileGetter upg = new UserProfileGetter();
        
        upg.getfromSidebar();
        ApexPages.currentPage().getParameters().put('src', 'sb');
        upg.getfromSidebar();
        upg.getpnlMessage();
        upg.getpnlError();
        upg.getcontactUsAddress();
        
        String cEmail = 'Cloud/Email';
        
        ApexPages.currentPage().getParameters().put('cat', cEmail);
    	ApexPages.currentPage().getParameters().put('subcat', 'Cloud Reseller');
        
        upg.getdisplaySidePanel();
        upg.emailUsername();
        
        upg.username = 'DEPLOYMENT TEST';
        upg.emailUsername();
        
    }
}