/*
* Author: Tina Buchholtz
* Purpose: Utility class which performs various operations.  Called via trigger.
* 
*/
public class UpdatePartnerAccountUtility {
 // update Account's Contract Signed Date
    public static void updateAccountSignedDate(Account account, Date contract_signed) {
      account.Contract_Signed_Date__c = contract_signed;
      }
 // update Account's Partner Active
    public static void updateAccountPartnerActive(Account account) {
      }
    public static void updateAccountPartnerType (Account account){
    }   
    }