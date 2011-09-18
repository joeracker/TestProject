public with sharing class OpportunityCustomListViewCtrl{

    

  date myDate;
  
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
  
  public String OppName   {get; set;}
  public String AccName   {get; set;}
  public String oppStage     {get; set;}
  public String ownName  {get; set;}
  public String opportunityid {get; set;}
  
   private String sortDirection = 'ASC NULLS FIRST';
   private String sortExp = 'closedate';
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
        // sortDirection = (sortDirection == 'ASC')? 'DESC' : 'ASC';
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
  
  
   
    
 
  public List<SelectOption> getStageValues() {
  
     List<SelectOption> options = new List<SelectOption>();
     options.add(new SelectOption('','--None--'));
     Schema.DescribeFieldResult fieldResult = Opportunity.StageName.getDescribe();
     List<Schema.PicklistEntry> stage= fieldResult.getPicklistValues();
     for( Schema.PicklistEntry f : stage)
      {
       if(f.getLabel()== 'Qualify' || f.getLabel()=='Educate' || f.getLabel()=='Validate' || f.getLabel()== 'Justify' || f.getLabel() == 'Decide' || f.getLabel()=='closed lost' )
      options.add(new SelectOption(f.getLabel(), f.getValue()));
      }       
      return options;
    }
  
/*  public String getSortField(){
    return sortField;
  }*/
  
  List<Opportunity> mainList = new List<Opportunity>();
  
  Map<Integer, List<Opportunity>> mapOpp = new Map<Integer, List<Opportunity>>();
 // Map<String, String> sortMap = new Map<String, String>();
  
  public List<Opportunity> oppList;
  
  public String oppID {get; set;}
  public List<Opportunity> getoppList(){
  //system.debug('-------------------------------------opplist.size():'+opplist.size());
      if(oppList != null){
          if(oppList.size() > 0){
              return oppList;
          }
      }
      return null;
  }
  
  public OpportunityCustomListViewCtrl(){
    pageStr   = 'page 1 of 1';
    pageMark  = 'first';
    sortType  = 'DESC NULLS LAST';
    sortField = 'lastmodifieddate';
 // buildSortMap();
    searchOpps();
    showPrev = false;
  }

  public void buildOppMap(){
        
        mapOpp = new Map<Integer, List<Opportunity>>();
        oppList    = new List<Opportunity>();
        
        Integer counter    = 0;
        Integer pageIndex  = 1;
        
        List<Opportunity> tempOpps = new List<Opportunity>();
        
        for(Opportunity tempOpp : mainList){
            if(counter == recordsPerPage){
                mapOpp.put(pageIndex, tempOpps);
                tempOpps = new List<Opportunity>();
                pageIndex++;
                counter = 0;
            }
            tempOpps.add(tempOpp);
            counter++;          
        }
        if(tempOpps.size() != 0){
            mapOpp.put(pageIndex, tempOpps);
        }
        mapToList();
    }
    
    public void mapToList(){
        
        showPrev = true;
        showNext = true;
        
        oppList = new List<Opportunity>();
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
        if(curPage == mapOpp.size()){
          showNext = false;
        }
         
        oppList = mapOpp.get(curPage);
    }
    
    public Pagereference searchOpps(){
    opplist = new List<Opportunity>();
    
        myDate = date.newinstance(2011, 3, 1);
        
  
        
        
        
    if(sortField != 'lastmodifieddate'){
    //  sortType = sortMap.get(sortField);
      curPage = 1;
    }
    string sortFullExp = sortExpression  + ' ' + sortDirection;
    
    
    String str = 'Select name, account.name, CloseDate, StageName, Opportunity_id__c , owner.name  From Opportunity where On_Demand_Reconciled__c = FALSE '; 
    
           system.debug('_____________starting query ______________');
           
          if(OppName != '' && OppName!=NULL ){
           Str = Str + ' and Name Like \''+String.escapeSingleQuotes(OppName.trim())+'\'';
           system.debug('@@@@@@@@@@'+str);
           // Str = Str + ' and Name like OppName_';

           }
          
           if(AccName != '' && AccName!=NULL){
           Str = Str + ' and account.name = \''+String.escapeSingleQuotes(AccName.trim())+'\'';
           }
           
           if(oppStage != '' && oppStage!=NULL){
           Str = Str + ' and StageName =\''+oppStage.trim()+'\'';
           } 
           
           if(ownName != '' && ownName!=NULL){
           Str = Str + ' and owner.name =\''+String.escapeSingleQuotes(ownName.trim())+'\'';
           } 
           
            
           if( opportunityid != '' && opportunityid!=NULL){
           Str = Str + ' and Opportunity_id__c =\''+opportunityid.trim()+'\'';
           }
           
          // Str =  Str + ' and CreatedDate >= :myDate  order by ' +sortField + ' ' + sortType + ' Limit 500'; 
          Str =  Str + ' and CreatedDate >= :myDate  order by ' + sortFullExp  + ' Limit 500';   
          
           
    System.debug('------------------------------------Query:'+ str );
    mainList = database.query(str);
    system.debug('@@@@ending query@@@@------------------------mainList :'+mainList);
  
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
            buildOppMap();
           // resetSortMap();
            } 
            return Null;           
        }
    
        
    public PageReference EditOpp(){
      
    Pagereference OppView = new PageReference('/'+oppID+'/e?saveURL=apex/OppPage&retURL=apex/OppPage');
    return OppView;
  }
    
    public PageReference DelOpp(){
      
    Pagereference OppView = new PageReference('/setup/own/deleteredirect.jsp?delID='+oppID+'&retURL=apex/OppPage');
    return OppView;
  }    
  /*
 public void buildSortMap(){
    sortMap.put('name', 'asc');
    sortMap.put('account.name', 'asc');
    sortMap.put('amount', 'asc');
    sortMap.put('closedate', 'asc');
    sortMap.put('stagename', 'asc');
    sortMap.put('owner.name', 'asc');
     sortMap.put('Opportunity_id__c','asc');
  }
  
  public void resetSortMap(){
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