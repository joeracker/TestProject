public with sharing class LeadCustomListViewCtrl {

private List<lead> leads;

    Integer curPage        = 1;
    Integer recordsPerPage = 20;
    Integer maxPage        = 1;
    
    Boolean  bypassPageAdd = false;
    Boolean  bySort = false;
    
    String sortType = '';

    public Boolean showPrev {get; set;}
    public Boolean showNext {get; set;}

    public String pageStr   {get; set;}
    public String pageMark  {get; set;}
    public String sortField {get; set;}
    public String LeadName {get; set;}
    public String Company {get; set;}
    public String leadType {get; set;}
    public String leadstatus {get; set;}
   private String sortDirection = 'DESC NULLS LAST';
   private String sortExp = 'createddate';
    public String sortExpression
   {
     get
     {
        return sortExp;
     }
     set
     {
       //if the column is clicked on then switch between Ascending and Descending modes
       if (value == sortExp){
        //sortDirection = (sortDirection == 'ASC')? 'DESC' : 'ASC';}
        sortDirection = (sortDirection == 'ASC NULLS FIRST')? 'DESC NULLS LAST' : 'ASC NULLS FIRST';}
         
       else
         sortDirection = 'ASC NULLS FIRST';
       sortExp = value;
     }
   }

 public String getSortDirection()
 {
    //if not column is selected 
      

    if (sortExpression == null || sortExpression == '')
        return 'ASC NULLS FIRST';
    else
     return sortDirection;
 }

 public void setSortDirection(String value)
 {  
   sortDirection = value;
 }
  
  
   
    
    
    public List<SelectOption> getTypeValues() {
  
     List<SelectOption> options = new List<SelectOption>();
     options.add(new SelectOption('','--None--'));
     Schema.DescribeFieldResult fieldResult = Lead.lead_Type__C.getDescribe();
     List<Schema.PicklistEntry> leadType= fieldResult.getPicklistValues();
     for( Schema.PicklistEntry f : leadType)
      {
           if(f.getLabel()== 'Managed Colocation' || f.getLabel()=='Mail' || f.getLabel()=='Cloud' || f.getLabel()== 'Single' || f.getLabel() == '2-4' || f.getLabel()=='5+' || f.getLabel()=='Managed Cloud'  )
      options.add(new SelectOption(f.getLabel(), f.getValue()));
      }       
      return options;
    }

      public List<SelectOption> getstatusValues() {
  
     List<SelectOption> options = new List<SelectOption>();
     options.add(new SelectOption('','--None--'));
     Schema.DescribeFieldResult fieldResult = Lead.status.getDescribe();
     List<Schema.PicklistEntry> leadstatus= fieldResult.getPicklistValues();
     for( Schema.PicklistEntry f : leadstatus)
      {

       if(f.getLabel()== 'New' || f.getLabel()=='Open' || f.getLabel()=='Qualified' || f.getLabel()== 'Unqualified' || f.getLabel() == 'delete' )
      options.add(new SelectOption(f.getLabel(), f.getValue()));
      }       
      return options;
    }
 

  /*  public String getSortField(){
        
        return sortField;
    }*/
    
    List<Lead> mainList = new List<Lead>();
    
    
    Map<Integer, List<Lead>> mapLead = new Map<Integer, List<Lead>>();
    Map<String, String> sortMap = new Map<String, String>();

    public List<Lead> leadList;

    public String leadID {get; set;}
    
    public List<Lead> getleadList(){
        if(leadList != null){
            if(leadList.size() > 0){
                return leadList;
            }
        }
        return null;
    }


    public LeadCustomListViewCtrl(){
        pageStr   = 'page 1 of 1';
        pageMark  = 'first';
      // sortType  = 'DESC NULLS LAST';
       sortField = 'lastmodifieddate';
        //buildSortMap();
       searchLeads();
        showPrev = false;
    }


    public void buildLeadMap(){
            
            mapLead = new Map<Integer, List<Lead>>();
            leadList    = new List<Lead>();
            
            Integer counter    = 0;
            Integer pageIndex  = 1;
            
            List<Lead> tempLeads = new List<Lead>();
            
            for(Lead tempLead : mainList){
                if(counter == recordsPerPage){
                    mapLead.put(pageIndex, tempLeads);
                    tempLeads = new List<Lead>();
                    pageIndex++;
                    counter = 0;
                }
                tempLeads.add(tempLead);
                counter++;          
            }
            if(tempLeads.size() != 0){
                mapLead.put(pageIndex, tempLeads);
            }
            mapToList();
        }
    
    public void mapToList(){
        
        showPrev = true;
        showNext = true;
        
        leadList = new List<Lead>();
        if(bypassPageAdd == false){
            if(pageMark == 'prev' && curPage > 1){
                curPage = curPage - 1;  
            }
            else if(pageMark == 'next' && curPage < maxPage){
                curPage = curPage + 1;
            }
            else if(pageMark == 'first' && curPage > 1){
                curPage = 1;
            }
            else if(pageMark == 'last' && curPage < maxPage){
                curPage = maxPage;
            }
        }
        bypassPageAdd = false;
        pageStr = 'page ' + curPage + ' of ' + maxPage; 
        
        if(curPage == 1){
            showPrev = false;
        }
        if(curPage == mapLead.size()){
            showNext = false;
        }
        
        leadList = mapLead.get(curPage);
    }
    
   public List<Lead> getLeads(){
   return leads;
   }
    
    public pageReference  searchLeads(){
    
   
    leadList= new List<lead>();
  
        if(sortField != 'lastmodifieddate'){
          //  sortType = sortMap.get(sortField);
            curPage = 1;
       }
        
        string sortFullExp = sortExpression  + ' ' + sortDirection;
        String str = 'Select name, company, status, Lead_Type__c, createddate, email, state From Lead where isconverted = false ' ;
                    
                     
            if(leadName != '' && leadName!=NULL ){
               Str = Str + ' and name =  \''+leadName.trim()+'\'' ;
           }
           if(Company != '' && Company!=NULL ){
           Str = Str + ' and company = \''+Company.trim()+'\'';
           }
           
           if( leadType!= '' && leadType!=NULL){
           Str = Str + ' and lead_Type__c =\''+leadType.trim()+'\'';
           } 
           
           if( leadstatus!= '' && leadstatus!=NULL){
           Str = Str + ' and status =\''+leadstatus.trim()+'\'';
           } 
       //str= Str  +  ' order by ' + sortFullExp +' ASC | DESC ? NULLS FIRST | LAST Limit 500';
    str= Str  +  ' order by ' + sortFullExp + ' Limit 500';
    system.debug('----------------------------------------query:'+str);
        mainList= database.query(str);
     
        
            
        if(mainList.size() > 0){
            Integer exceed  = math.mod(mainList.size(), recordsPerPage);
            maxPage         = mainList.size()/recordsPerPage;
            if(exceed!=0){
                maxPage+=1;
            }
            
            if(mainList.size() <= recordsPerPage){
                showNext = false;
            }
            
            bypassPageAdd = true;
            buildLeadMap();
            //resetSortMap();
            }
               return null;
        }
        
   /* public PageReference EditLead(){
        
        Pagereference LeadView = new PageReference('/'+leadID+'/e?saveURL=apex/LeadPage&retURL=apex/LeadPage');
        return LeadView;
        
    }*/
    
   public PageReference DelLead(){
        
        Pagereference LeadView = new PageReference('/setup/own/deleteredirect.jsp?&delID='+leadID+'&retURL=apex/LeadPage');
        return LeadView;
    }    
    
  /*  public void buildSortMap(){
        sortMap.put('name', 'asc');
        sortMap.put('company', 'asc');
        sortMap.put('state', 'asc');
        sortMap.put('status', 'asc');
        sortMap.put('Lead_Type__c', 'asc');
        sortMap.put('createddate', 'asc');
        sortMap.put('email', 'asc');
    }*/
       
    /* public void resetSortMap(){
        for(String s :sortMap.keySet()){
            if(s != sortField){
                sortMap.put(s, 'asc');
            }
            else{
                if(sortMap.get(s) == 'asc'){
                
                    sortMap.put(s, 'desc');
                }
                else{
                    sortMap.put(s, 'asc');
                }
            }
        }
    }*/
 }