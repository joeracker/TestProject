<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>ALERTALeadpassedtoyouhasnotbeencontacted</fullName>
        <description>ALERT: A Lead passed to you has not been contacted</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>andrew.kirby@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>chris.norfolk@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>duncan.murray@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>gogo.roberts@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jan.gronning@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john.hammond@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john.hough@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>louise.underwood@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>lucy.swinglehurst@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>matthew.buckley@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>matthew.clementson@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>ron.goddard@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>serena.bhalla@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>taylor.rhodes@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/Lead_not_followed_up</template>
    </alerts>
    <alerts>
        <fullName>ALERT_Close_Date_on_a_Closed_Won_Opp_has_been_changed</fullName>
        <description>ALERT: Close Date on a Closed Won Opp has been changed</description>
        <protected>false</protected>
        <recipients>
            <recipient>anshu.gautam@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>tbuchhol@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/EMEA_Close_Date_Changed</template>
    </alerts>
    <alerts>
        <fullName>APAC_Email_to_Leadership_and_APAC_team_when_a_1000_is_closed_won</fullName>
        <description>APAC Email to Leadership and APAC team, when a $1000 is closed won.</description>
        <protected>false</protected>
        <recipients>
            <recipient>APAC Director - Sales</recipient>
            <type>roleSubordinatesInternal</type>
        </recipients>
        <recipients>
            <recipient>david.kelly@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jan.gronning@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john.morris@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>matthew.nethaway@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>stuart.simms@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/HK_SMB_1000</template>
    </alerts>
    <alerts>
        <fullName>A_Critical_Sites_Opp_Has_Been_Created_in_SF</fullName>
        <ccEmails>ekerr@rackspace.com</ccEmails>
        <description>A Critical Sites Opp Has Been Created in SF</description>
        <protected>false</protected>
        <recipients>
            <recipient>shokor.jawshan@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/Critical_Sites_opp_created</template>
    </alerts>
    <alerts>
        <fullName>A_Critical_Sites_Opp_has_been_Closed_Won</fullName>
        <ccEmails>ekerr@rackspace.com</ccEmails>
        <description>A Critical Sites Opp has been Closed Won</description>
        <protected>false</protected>
        <recipients>
            <recipient>shokor.jawshan@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/Critical_Sites_opp_won</template>
    </alerts>
    <alerts>
        <fullName>A_New_Intensive_Customer_has_been_Signed</fullName>
        <description>A New Intensive Customer has been Signed</description>
        <protected>false</protected>
        <recipients>
            <recipient>ekerr@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>patrick.torrez@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>rachel.woodson@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ShareAll/New_Intensive_Customer</template>
    </alerts>
    <alerts>
        <fullName>A_New_RES_Deal_has_been_Closed_Won</fullName>
        <description>A New RES Deal has been Closed Won</description>
        <protected>false</protected>
        <recipients>
            <recipient>ekerr@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ShareAll/New_RES_Customer</template>
    </alerts>
    <alerts>
        <fullName>Alert_to_benelux_Manager_when_New_Lead_assigned_to_Benelux</fullName>
        <description>Alert to benelux Manager when New Lead assigned to Benelux</description>
        <protected>false</protected>
        <recipients>
            <recipient>EMEA Manager - Benelux</recipient>
            <type>role</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>Sales/Alert_to_Benelux_Manager</template>
    </alerts>
    <alerts>
        <fullName>AmountOver10KAlertforUKSE</fullName>
        <ccEmails>salesengineers-uk@rackspace.com</ccEmails>
        <description>Amount Over 10K Alert for UK SE</description>
        <protected>false</protected>
        <recipients>
            <recipient>tbuchhol@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/AlertAmountOver10KSE</template>
    </alerts>
    <alerts>
        <fullName>AmountOver10KAlertforUSSE</fullName>
        <ccEmails>salesengineers-us@rackspace.com</ccEmails>
        <description>Amount Over 10K Alert for US SE</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/AlertAmountOver10KSE</template>
    </alerts>
    <alerts>
        <fullName>An_Opportunity_in_the_amount_of_10k_Has_Been_Created</fullName>
        <description>An Opportunity in the amount of 10k + Has Been Created</description>
        <protected>false</protected>
        <recipients>
            <recipient>ekerr@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>will.schwartz@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ShareAll/bigdealalertus</template>
    </alerts>
    <alerts>
        <fullName>ApprovalEmail</fullName>
        <description>Approval Email</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/ApprovalNotification</template>
    </alerts>
    <alerts>
        <fullName>ApprovalEmailEmailtoSalesRepthatSEhasapprovedtherequest</fullName>
        <description>Approval Email - Email to Sales Rep that SE has approved the request</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/ApprovalNotification</template>
    </alerts>
    <alerts>
        <fullName>ApprovalofEmailtoOwner</fullName>
        <description>Approval of Email to Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/ApprovalNotification</template>
    </alerts>
    <alerts>
        <fullName>BigDealAlertToEMEAManagers</fullName>
        <description>Big Deal Alert To EMEA Managers</description>
        <protected>false</protected>
        <recipients>
            <recipient>andrew.kirby@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>anshu.gautam@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>chris.norfolk@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jan.gronning@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john.hammond@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john.hough@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john.morris@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>lily.andrews@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>lucy.swinglehurst@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>matthew.buckley@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>matthew.clementson@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>reema.mavani@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>robert.gillam@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>serena.bhalla@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>taylor.rhodes@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/Big_Deal_Alert</template>
    </alerts>
    <alerts>
        <fullName>ChurnOppUpdateNoticeForAMsClosedate1</fullName>
        <description>Churn Opp Update Notice - For AM&apos;s (Close date +1)</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Support/Support_Churn_Opp_Update_Notice</template>
    </alerts>
    <alerts>
        <fullName>EMEAEmailalerttosalesrepwhenleadhasurgentrequirements</fullName>
        <description>EMEA Email alert to sales rep when lead has urgent requirements</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/Email_Alert_to_Sales_Rep</template>
    </alerts>
    <alerts>
        <fullName>EMEA_Alert</fullName>
        <ccEmails>Purchasing-UK@rackspace.com</ccEmails>
        <description>EMEA Alert to go to Purchasing UK when LoadBalancer isa requested product</description>
        <protected>false</protected>
        <recipients>
            <field>SE_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>SE_Secondary_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>anshu.gautam@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>nicola.pohl@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/EMEA_only_Alert_to_UK_Purchasing</template>
    </alerts>
    <alerts>
        <fullName>EMEA_Email_Alert_to</fullName>
        <description>EMEA Email Alert to Jan and Reema</description>
        <protected>false</protected>
        <recipients>
            <recipient>jan.gronning@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john.morris@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>reema.mavani@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/Big_Deal_Alert</template>
    </alerts>
    <alerts>
        <fullName>EMEA_Email_Alert_to_Jan_John_and_Reema</fullName>
        <description>EMEA Email Alert to Jan, John and Reema</description>
        <protected>false</protected>
        <recipients>
            <recipient>jan.gronning@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john.hammond@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john.morris@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>matthew.clementson@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>reema.mavani@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/Big_Deal_Alert</template>
    </alerts>
    <alerts>
        <fullName>EMEA_Email_alert_to_Cloud_Automation_Team_when_a_new_opp_is_created</fullName>
        <description>EMEA Email alert to Cloud Automation Team when a new opp is created</description>
        <protected>false</protected>
        <recipients>
            <recipient>anshu.gautam@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>els.vermeulen@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>katie.cameron@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ShareAll/EMEA_New_Cloud_Opportunity_Created</template>
    </alerts>
    <alerts>
        <fullName>EMEA_Email_to_SMB_Sales_Director_and_Cloud_Manager_when_Cloud_opp_1000</fullName>
        <description>EMEA Email to SMB Sales Director and Cloud Manager when Cloud opp&gt; £1000</description>
        <protected>false</protected>
        <recipients>
            <recipient>anshu.gautam@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jan.gronning@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john.morris@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>michael.johnson@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>stuart.simms@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/EMEA_Cloud_1000</template>
    </alerts>
    <alerts>
        <fullName>EMEA_Opps_created_for_accounts_assigned_to_M6</fullName>
        <ccEmails>celina.wood@rackspace.co.uk</ccEmails>
        <ccEmails>paul.bartram@rackspace.co.uk</ccEmails>
        <ccEmails>andrew.jardine@rackspace.co.uk</ccEmails>
        <ccEmails>kamaldeep.sandhu@rackspace.co.uk</ccEmails>
        <description>EMEA Opps created for accounts assigned to M6</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>Sales/Alert_to_Beneldfsfux_Manager</template>
    </alerts>
    <alerts>
        <fullName>EMEA_SMB_GBP_1000_opp_closed_won</fullName>
        <description>EMEA SMB &gt;GBP 1000 opp closed won</description>
        <protected>false</protected>
        <recipients>
            <recipient>jan.gronning@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john.hammond@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>john.morris@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>matthew.buckley@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>matthew.clementson@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>robert.gillam@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/EMEA_SMB_1000</template>
    </alerts>
    <alerts>
        <fullName>EMEA_only_Closed_Lost_Survey</fullName>
        <description>EMEA only - Closed Lost Survey</description>
        <protected>false</protected>
        <recipients>
            <field>Email_Shadow_for_Survey__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>simon.abrahams@rackspace.co.uk</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>ShareAll/closedlostsurveyemea</template>
    </alerts>
    <alerts>
        <fullName>EmailToOwnerRejectionhasnotbeensubmittedforapproval</fullName>
        <description>Email To Owner - Rejection has not been submitted for approval</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/RejectionApprovalnotSubmitted</template>
    </alerts>
    <alerts>
        <fullName>EmailToReassignNurturedOpportunity</fullName>
        <description>Email To Re-assign Nurtured Opportunity</description>
        <protected>false</protected>
        <recipients>
            <recipient>sslimp@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/ReassignNurtureNotification</template>
    </alerts>
    <alerts>
        <fullName>Email_alert</fullName>
        <description>Email alert to EMEA PS when an EMEA PS opportunity has been created</description>
        <protected>false</protected>
        <recipients>
            <recipient>EMEA Professional Services</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>EMEA Professional Services Manager</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>EMEA Sales Engineer Manager</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Professional_Services/Opportunity_created_for_PS</template>
    </alerts>
    <alerts>
        <fullName>Email_alert_For_Managed_Colo_EMEA</fullName>
        <description>Email alert For Managed Colo - EMEA</description>
        <protected>false</protected>
        <recipients>
            <recipient>anshu.gautam@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>Sales/Alert_to_managedcolo</template>
    </alerts>
    <alerts>
        <fullName>Email_notification_for_Closed_Won_Opps_35K</fullName>
        <description>Email notification for Closed Won Opps &gt; 35K</description>
        <protected>false</protected>
        <recipients>
            <recipient>mnewell@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Support/Closed_Opps_35K</template>
    </alerts>
    <alerts>
        <fullName>Email_notification_for_Emerging_Opps_0_5K</fullName>
        <description>Email notification for Emerging Opps 0-5K</description>
        <protected>false</protected>
        <recipients>
            <recipient>bbelasco@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>brian.zender@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jchoe@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jennifer.williams@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>kjones@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>lewis.taylor@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>melissa.munguia@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>michael.torres@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>msnopek@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>patrick.torrez@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>rachel.woodson@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Support/Closed_Opps_0_5K</template>
    </alerts>
    <alerts>
        <fullName>Email_notification_for_Intensive_SLA_Opps_0_35K</fullName>
        <description>Email notification for Intensive SLA Opps 0-35K</description>
        <protected>false</protected>
        <recipients>
            <recipient>bbelasco@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>patrick.torrez@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>rachel.woodson@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Support/Closed_Opps_0_35K</template>
    </alerts>
    <alerts>
        <fullName>Email_notification_for_Managed_SLA_Opps_5_35K</fullName>
        <description>Email notification for Managed SLA Opps 5-35K</description>
        <protected>false</protected>
        <recipients>
            <recipient>bbelasco@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>patrick.torrez@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>rachel.woodson@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Support/Closed_Opps_5_35K</template>
    </alerts>
    <alerts>
        <fullName>Email_to_AM_when_new_opportunity_is_created_on_customer_account</fullName>
        <description>Email to AM when new opportunity is created on customer account</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>Support/New_opp_created_on_customer_account</template>
    </alerts>
    <alerts>
        <fullName>Email_to_AM_when_opp_is_closed_on_account</fullName>
        <description>Email to AM when opp is closed on customer account</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>Support/closed_opp_on_customer_account</template>
    </alerts>
    <alerts>
        <fullName>EmailnotifyingAccountingthatanopportunitycontractlengthis36monthshasbeencre</fullName>
        <ccEmails>creditreferences@rackspace.com</ccEmails>
        <description>Email notifying Accounting that an opportunity contract length is 36 months has been created.</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/x36MonthContracttoAccounting</template>
    </alerts>
    <alerts>
        <fullName>EmailnotifyingAccountingthatanopportunitycontractlengthis36monthshasbeencre_d_2</fullName>
        <description>Email notifying Accounting that an opportunity contract length is 36 months has been created - EMEA</description>
        <protected>false</protected>
        <recipients>
            <recipient>jay.madhani@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>tbuchhol@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/x36MonthContracttoAccounting</template>
    </alerts>
    <alerts>
        <fullName>EmailnotifyingAccountingthatanopportunitygreaterthan20Khasbeencreated</fullName>
        <ccEmails>creditreferences@rackspace.com</ccEmails>
        <description>Email notifying Accounting that an opportunity greater than 20K has been created.</description>
        <protected>false</protected>
        <recipients>
            <recipient>tbuchhol@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/Over20KtoAccounting</template>
    </alerts>
    <alerts>
        <fullName>EmailofNurturedOpportunityUK</fullName>
        <description>Email of Nurtured Opportunity UK</description>
        <protected>false</protected>
        <recipients>
            <recipient>EMEA LDT</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/NurtureNotification</template>
    </alerts>
    <alerts>
        <fullName>EmailofNurturedOpportunityUS</fullName>
        <description>Email of Nurtured Opportunity US</description>
        <protected>false</protected>
        <recipients>
            <recipient>sherise.beeson@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/NurtureNotification</template>
    </alerts>
    <alerts>
        <fullName>Emailrecordownerthatopportunityhasbeenclosedlost</fullName>
        <description>Email record owner that opportunity has been closed lost.</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>PartnerCommunications/PartnerOpportunityClosedLost</template>
    </alerts>
    <alerts>
        <fullName>Emailrecordownerthatopportunityhasbeenclosedwon</fullName>
        <description>Email record owner that opportunity has been closed won.</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>PartnerCommunications/PartnerOpportunityClosedWon</template>
    </alerts>
    <alerts>
        <fullName>EmailtoOwnerthatApprovalhasbeendenied</fullName>
        <description>Email to Owner that Approval has been denied</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/ApprovalRejected</template>
    </alerts>
    <alerts>
        <fullName>EmailtoRecordOwnerRejectionApproved</fullName>
        <description>Email to Record Owner - Rejection Approved</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/ApprovalNotification</template>
    </alerts>
    <alerts>
        <fullName>EmailtoRecordOwnerRejectionDenied</fullName>
        <description>Email to Record Owner - Rejection Denied</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/ApprovalRejected</template>
    </alerts>
    <alerts>
        <fullName>LeadFollowupSurveyEMEA</fullName>
        <ccEmails>anshu.gautam@rackspace.co.uk</ccEmails>
        <description>Lead Followup Survey EMEA</description>
        <protected>false</protected>
        <recipients>
            <field>Email_Shadow_for_Survey__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/Lead_Follow_Up_Survey_EMEA</template>
    </alerts>
    <alerts>
        <fullName>LeadFollowupSurveyUS</fullName>
        <description>Lead Followup Survey US</description>
        <protected>false</protected>
        <recipients>
            <field>Email_Shadow_for_Survey__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ShareAll/Lead_Follow_Up_Survey_US</template>
    </alerts>
    <alerts>
        <fullName>Notification_of_a_Bandwidth_Revenue_Ticket</fullName>
        <description>Notification of a Bandwidth Revenue Ticket</description>
        <protected>false</protected>
        <recipients>
            <recipient>anshu.gautam@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/bandwidth_Upgrade_Revenue_Ticket</template>
    </alerts>
    <alerts>
        <fullName>Notifies_US_when_an_opportunity_is_closed_won</fullName>
        <description>Notifies US when an opportunity is closed won</description>
        <protected>false</protected>
        <recipients>
            <field>Additional_Solution_Engineer__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Solution_Engineer__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/Notification_to_US_SE_of_Opportunity_Closing</template>
    </alerts>
    <alerts>
        <fullName>Notify_Owner_that_Lead_is_Converted</fullName>
        <description>Notify Owner that Lead is Converted</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Leads/Send_email_when_Partner_Lead_is_Converted</template>
    </alerts>
    <alerts>
        <fullName>Potential_Critical_Sites_Opportunity</fullName>
        <description>Potential Critical Sites Opportunity</description>
        <protected>false</protected>
        <recipients>
            <recipient>amar.patel@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>ekerr@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ShareAll/RES_opp_has_been_passed</template>
    </alerts>
    <alerts>
        <fullName>RES_opp_has_been_passed_to_Nora</fullName>
        <ccEmails>jennifer.pinson@rackspace.com</ccEmails>
        <ccEmails>dani.garcia@rackspace.com</ccEmails>
        <ccEmails>kathryn.schwarm@rackspace.com</ccEmails>
        <ccEmails>ekerr@rackspace.com</ccEmails>
        <description>RES opp has been passed to Nora</description>
        <protected>false</protected>
        <recipients>
            <recipient>RFP Engagement Requests</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ShareAll/RES_opp_has_been_passed</template>
    </alerts>
    <alerts>
        <fullName>SendEmailToSEforOneOffand60EMEA</fullName>
        <ccEmails>salesengineers-uk@rackspace.com</ccEmails>
        <description>Send Email To SE for One Off and % &gt; 60% EMEA</description>
        <protected>false</protected>
        <recipients>
            <recipient>tbuchhol@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/EmailtoSEwhenOneOffand60</template>
    </alerts>
    <alerts>
        <fullName>SendEmailtoPSwhenaPSopportunityiscreated</fullName>
        <description>Send Email to PS when a PS opportunity is created</description>
        <protected>false</protected>
        <recipients>
            <recipient>US Application Tier Services</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>US Manager - Professional Services</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>US Professional Services</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Professional_Services/Opportunity_created_for_PS</template>
    </alerts>
    <alerts>
        <fullName>SendEmailtoSEforOneOffand60US</fullName>
        <ccEmails>salesengineers-us@rackspace.com</ccEmails>
        <description>Send Email to SE for One Off and % &gt; 60% US</description>
        <protected>false</protected>
        <recipients>
            <recipient>tbuchhol@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/EmailtoSEwhenOneOffand60</template>
    </alerts>
    <alerts>
        <fullName>SendEmailtoSEforOneOffwhenuncheckedandClosedWonEMEA</fullName>
        <ccEmails>salesengineers-uk@rackspace.com</ccEmails>
        <description>Send Email to SE for One Off when unchecked and Closed Won EMEA</description>
        <protected>false</protected>
        <recipients>
            <recipient>tbuchhol@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/SendEmailtoSEforOneOff</template>
    </alerts>
    <alerts>
        <fullName>SendEmailtoSEforOneOffwhenuncheckedandClosedWonUS</fullName>
        <ccEmails>salesengineers-us@rackspace.com</ccEmails>
        <description>Send Email to SE for One Off when unchecked and Closed Won US</description>
        <protected>false</protected>
        <recipients>
            <recipient>tbuchhol@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/SendEmailtoSEforOneOff</template>
    </alerts>
    <alerts>
        <fullName>SendRejectionofApprovaltoOwner</fullName>
        <description>Send Rejection of Approval to Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/ApprovalRejected</template>
    </alerts>
    <alerts>
        <fullName>Send_email_to_EMEA_Q_Mgr_opp_passed_to_other_team</fullName>
        <description>Send email to EMEA Q Mgr opp passed to other team</description>
        <protected>false</protected>
        <recipients>
            <recipient>EMEA Head of Online Sales</recipient>
            <type>role</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>Sales/EMEA_passed_opps_to_non_US</template>
    </alerts>
    <alerts>
        <fullName>Send_email_to_EMEA_rep_90_days_after_migration_close</fullName>
        <description>Send email to EMEA rep 90 days after migration close</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>Sales/Email_on_Reverse_Migration_to_EMEA</template>
    </alerts>
    <alerts>
        <fullName>Send_email_to_SE_for_commit_opportunity_US</fullName>
        <description>Send email to SE for commit opportunity - US</description>
        <protected>false</protected>
        <recipients>
            <field>Solution_Engineer__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/Notification_to_US_SE_of_Opportunity_Commit</template>
    </alerts>
    <alerts>
        <fullName>Send_email_to_SE_on_SE_change_on_Opportunity</fullName>
        <description>Send email to SE on SE change on Opportunity</description>
        <protected>false</protected>
        <recipients>
            <field>SE_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/Send_email_on_SE_change</template>
    </alerts>
    <alerts>
        <fullName>Send_email_to_SE_when_Additional_SE_field_changes</fullName>
        <description>Send email to SE when Additional SE field changes</description>
        <protected>false</protected>
        <recipients>
            <field>SE_Secondary_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>Sales/SE_changed_on_opportunity</template>
    </alerts>
    <alerts>
        <fullName>Send_email_to_SE_when_SE_field_changes</fullName>
        <description>Send email to SE when SE field changes</description>
        <protected>false</protected>
        <recipients>
            <field>SE_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>tbuchhol@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>Sales/SE_changed_on_opportunity</template>
    </alerts>
    <alerts>
        <fullName>Send_email_to_owner_when_approved_for_nurture</fullName>
        <description>Send email to owner when approved for nurture</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/Send_Email_when_Nurture_is_approved</template>
    </alerts>
    <alerts>
        <fullName>Send_email_to_rep_when_nurture_opp_is_sent_back</fullName>
        <description>Send email to rep when nurture opp is sent back</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/Email_to_Rep_when_Nurture_comes_back</template>
    </alerts>
    <alerts>
        <fullName>SendemailtoFinanceonapproval</fullName>
        <ccEmails>trey.mcgaughy@rackspace.com; jskaug@rackspace.com</ccEmails>
        <description>Send email to Finance on approval</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/Approval_for_Silver_Bullet_to_finance</template>
    </alerts>
    <alerts>
        <fullName>SupportRenewaltoBDC</fullName>
        <description>Support Renewal to BDC</description>
        <protected>false</protected>
        <recipients>
            <recipient>Business Development Consultant</recipient>
            <type>accountTeam</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Support/SupportRenewaltoBDC</template>
    </alerts>
    <alerts>
        <fullName>SupportTLNotificationofChurnOpp</fullName>
        <description>Support TL Notification of Churn Opp</description>
        <protected>false</protected>
        <recipients>
            <recipient>Team Lead</recipient>
            <type>accountTeam</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Support/Support_TL_Notification_of_Churn_Opp</template>
    </alerts>
    <alerts>
        <fullName>SupportTLNotificationofRenewalOpp</fullName>
        <description>Support TL Notification of Renewal Opp</description>
        <protected>false</protected>
        <recipients>
            <recipient>Team Lead</recipient>
            <type>accountTeam</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Support/Support_TL_Notification_of_Renewal_Opp</template>
    </alerts>
    <alerts>
        <fullName>SupportUpdateOpportunity</fullName>
        <description>Support Update Opportunity</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Support/SupportUpdateOpportunity</template>
    </alerts>
    <alerts>
        <fullName>Test_for_lead_survey</fullName>
        <ccEmails>vbellamy@salesforce.com</ccEmails>
        <description>Test for lead survey</description>
        <protected>false</protected>
        <recipients>
            <recipient>anshu.gautam@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/Lead_Follow_Up_Survey_EMEA</template>
    </alerts>
    <alerts>
        <fullName>sfdc</fullName>
        <ccEmails>vbellamy@salesforce.com</ccEmails>
        <description>sfdc</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/NYCRoundtableFinal_d_2</template>
    </alerts>
    <fieldUpdates>
        <fullName>AmountApproval</fullName>
        <field>Amount_Approval__c</field>
        <literalValue>1</literalValue>
        <name>Amount Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>AmountinOpportunity</fullName>
        <field>Amount</field>
        <formula>IF($RecordType.Name = &quot;Credit Memo&quot;, 
(Value__c * Probability), 
IF($RecordType.Name = &quot;Churn&quot;, Amount, 
IF($RecordType.Name = &quot;Ayuda&quot;, Amount,
IF($RecordType.Name = &quot;Renewal&quot;, (New_MRR__c - Current_MRR__c), 

IF(OR(ISPICKVAL( Split_Category__c, &quot;Split - Primary&quot;), 
ISPICKVAL( Split_Category__c, &quot;Split - Secondary&quot;)), Approval_Amount__c* Split_Percentage__c, Approval_Amount__c )))))</formula>
        <name>Amount in Opportunity</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Autocreateopportunitynameforchurn</fullName>
        <description>Updates the support churn opportunity name to churn category, account name, and close date.  Something has to be entered at first.</description>
        <field>Name</field>
        <formula>IF(ISPICKVAL(Churn_Category__c, &quot;Defection&quot;), &quot;Defection - &quot; &amp; Account.Name &amp; &quot; - &quot; &amp; TEXT(CloseDate), 
IF(ISPICKVAL(Churn_Category__c, &quot;De-Book&quot;), &quot;De-Book - &quot; &amp; Account.Name &amp; &quot; - &quot; &amp; TEXT(CloseDate),
&quot;Downgrade - &quot; &amp; Account.Name &amp; &quot; - &quot; &amp; TEXT(CloseDate)))</formula>
        <name>Auto create opportunity name for churn</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ChangeownershiptoEMEAQTeamManager</fullName>
        <field>OwnerId</field>
        <lookupValue>michael.johnson@rackspace.co.uk.core</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Change ownership to EMEA Q Team Manager</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CheckVMReconciledwhenVM</fullName>
        <description>Checks the VM Reconciled field when VM Fees</description>
        <field>VM_Reconciled__c</field>
        <literalValue>1</literalValue>
        <name>Check VM Reconciled when VM</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ChurnRenewal</fullName>
        <description>Renewal Checkbox selected when Churn Reason indicates &quot;Renewal Discount&quot;</description>
        <field>Renewal__c</field>
        <literalValue>1</literalValue>
        <name>Churn Renewal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ClearRejectionFlag</fullName>
        <field>Reject__c</field>
        <literalValue>0</literalValue>
        <name>Clear Rejection Flag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CloseDateTextCM</fullName>
        <field>Close_Date_Help__c</field>
        <literalValue>Credit Memo- the date you enter the Credit Memo in CORE.</literalValue>
        <name>Close Date Text - CM</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CloseDateTextChurn</fullName>
        <description>Close Date Text to help explain the field to support.</description>
        <field>Close_Date_Help__c</field>
        <literalValue>Close date = date billing for device/service should change/cease</literalValue>
        <name>Close Date Text - Churn</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ConfirmedAmount1</fullName>
        <description>Field updated to equal &quot;amount&quot; based on opp stage &quot;closed/won or confirmed&quot;.</description>
        <field>Confirmed_Amount__c</field>
        <formula>Amount</formula>
        <name>Confirmed Amount 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ConfirmedAmount2</fullName>
        <description>Return value to 0 when Opp % is less than 100</description>
        <field>Confirmed_Amount__c</field>
        <formula>0</formula>
        <name>Confirmed Amount 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DemoServerApproved</fullName>
        <description>Check the Demo Server Approval Checkbox</description>
        <field>Demo_Server_Approved__c</field>
        <literalValue>1</literalValue>
        <name>Demo Server Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>EVAapproved</fullName>
        <field>EVA_Approval__c</field>
        <literalValue>1</literalValue>
        <name>EVA approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>EquifaxGradeApproved</fullName>
        <description>Set the Equifax Grade to Approved</description>
        <field>Equifax_Approved__c</field>
        <literalValue>1</literalValue>
        <name>Equifax Grade Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ForecastAmount1</fullName>
        <description>Forecast amount updated to equal &quot;amount&quot; when not closed/won or confirmed.</description>
        <field>Forecast_Amount__c</field>
        <formula>Amount</formula>
        <name>Forecast Amount 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ForecastAmount2</fullName>
        <description>Sets Forecast Amount to 0 when opp is confirmed/closed won.</description>
        <field>Forecast_Amount__c</field>
        <formula>0</formula>
        <name>Forecast Amount 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>NeedsApprovalStatus</fullName>
        <description>Set Status to &quot;Needs Approval&quot;</description>
        <field>Status__c</field>
        <literalValue>Needs Approval</literalValue>
        <name>Needs Approval Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RTOpportunitytoReadOnly</fullName>
        <description>When Rejection are approved the Close Rejected Stage should be set at the same time as changing the RT to read only</description>
        <field>RecordTypeId</field>
        <lookupValue>ReadOnly</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>RT Opportunity to Read Only</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RemoveOnDemandReconciledremoveVM</fullName>
        <description>removes the on demand reconciled when the VM Fees are removed</description>
        <field>On_Demand_Reconciled__c</field>
        <literalValue>0</literalValue>
        <name>Remove On Demand Reconciled remove VM</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RemoveRejectedDate</fullName>
        <field>Rejected_Date__c</field>
        <name>Remove Rejected Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RemoveVMReconciledDateremoveVM</fullName>
        <description>removes the VM Reconciled date when the VM Fees are removed</description>
        <field>VM_Reconciled_Date__c</field>
        <name>Remove VM Reconciled Date remove VM</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RemoveVMReconciledremoveVM</fullName>
        <description>Removes the VM Reconciled when the VM Fees are removed</description>
        <field>VM_Reconciled__c</field>
        <literalValue>0</literalValue>
        <name>Remove VM Reconciled remove VM</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Removed_Hosting_Reconciled_Date</fullName>
        <description>removes hosting reconciled date when cvp verified is unchecked</description>
        <field>Hosting_Reconciled_Date__c</field>
        <name>Removed Hosting Reconciled Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ResetEVAApprovalFlag</fullName>
        <field>EVA_Approval__c</field>
        <literalValue>0</literalValue>
        <name>Reset EVA Approval Flag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetApprovalReason</fullName>
        <description>Set Approval Reason for opportunities</description>
        <field>Approval_Reason__c</field>
        <formula>(IF (AND(NOT(EVA_Approval__c) ,
(OR($RecordType.Name = &quot;New&quot;, 
$RecordType.Name = &quot;Modification&quot;)), 
(OR(ISPICKVAL( EVA_Grade__c , &quot;C&quot;), 
ISPICKVAL( EVA_Grade__c , &quot;C+&quot;), 
ISPICKVAL( EVA_Grade__c , &quot;C-&quot;), 
ISPICKVAL( EVA_Grade__c , &quot;F&quot;))),
(OR(ISPICKVAL(Split_Category__c, &quot;No Split&quot;),
ISPICKVAL(Split_Category__c, &quot;Split - Primary&quot;)))), 
&quot; Needs EVA Approval, &quot;, &quot;&quot;))
&amp; 
(IF(AND(NOT(Equifax_Approved__c) , 
(OR(ISPICKVAL(Equifax_Grade__c, &quot;Red&quot;), 
ISPICKVAL(Equifax_Grade__c, &quot;Amber&quot;))), 
AND(OR(CONTAINS(Owner_Role__c,&quot;EMEA&quot;), 
CONTAINS(Owner_Role__c, &quot;Benelux&quot;),
CONTAINS(Owner_Role__c, &quot;US&quot;)),
AND(CONTAINS(Owner_Role__c, &quot;EMEA Mailtrust&quot;),
AND(ISPICKVAL(CurrencyIsoCode, &quot;GBP&quot;), Approval_Amount__c &gt; 100))),
(OR(ISPICKVAL(Split_Category__c, &quot;No Split&quot;), 
ISPICKVAL(Split_Category__c, &quot;Split - Primary&quot;)))), 
&quot; Needs Credit Report Approval, &quot;, &quot;&quot;))
&amp;
(IF(AND(NOT(Silver_Bullet_Approval__c), Silver_Bullet__c), 
&quot;Needs Silver Bullet Approval, &quot;, &quot;&quot;))</formula>
        <name>Set Approval Reason</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetRejectedDate</fullName>
        <field>Rejected_Date__c</field>
        <formula>Now()</formula>
        <name>Set Rejected Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetStagetoClosedRejected</fullName>
        <field>StageName</field>
        <literalValue>Closed Rejected</literalValue>
        <name>Set Stage to Closed Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetStatustoActive</fullName>
        <field>Status__c</field>
        <literalValue>Active</literalValue>
        <name>Set Status to Active</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetStatustoNurture</fullName>
        <field>Status__c</field>
        <literalValue>Nurture</literalValue>
        <name>Set Status to Nurture</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetStatustoPendingApproval</fullName>
        <field>Status__c</field>
        <literalValue>Pending Approval</literalValue>
        <name>Set Status to Pending Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetStatustoPendingRejection</fullName>
        <field>Status__c</field>
        <literalValue>Pending Rejection</literalValue>
        <name>Set Status to Pending Rejection</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetStatustoReject</fullName>
        <field>Status__c</field>
        <literalValue>Reject</literalValue>
        <name>Set Status to Reject</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetStatustoRejected</fullName>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Set Status to Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetstatustoActiveandApproved</fullName>
        <field>Status__c</field>
        <literalValue>Active and Approved</literalValue>
        <name>Set status to &quot;Active and Approved&quot;</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SettoNurtureStatus</fullName>
        <field>Status__c</field>
        <literalValue>Nurture</literalValue>
        <name>Set to Nurture Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SettoReadOnly</fullName>
        <description>Set Record Type to Read Only</description>
        <field>RecordTypeId</field>
        <lookupValue>ReadOnly</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Set to Read Only</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateClosedLost</fullName>
        <field>StageName</field>
        <literalValue>Closed Lost</literalValue>
        <name>Update Closed Lost</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateEVAValue</fullName>
        <description>updates the eva value on lead conversion</description>
        <field>EVA_Value__c</field>
        <formula>0.00</formula>
        <name>Update EVA Value</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateHostingFeestoDefault</fullName>
        <description>Updates the Hosting Fees field to default when an opportunity is created via lead conversion.</description>
        <field>Hosting_Fee__c</field>
        <formula>0.00</formula>
        <name>Update Hosting Fees to Default</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateHostingReconciledDate</fullName>
        <description>Updates the hosting reconciled date when the CVP Verified is checked.</description>
        <field>Hosting_Reconciled_Date__c</field>
        <formula>TODAY()</formula>
        <name>Update Hosting Reconciled Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateLeadDatePassed</fullName>
        <field>Lead_Date_Passed__c</field>
        <formula>now()</formula>
        <name>Update Lead Date Passed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateLeadGeneratorfield</fullName>
        <description>Updates the Lead Generator field.</description>
        <field>Lead_Generator__c</field>
        <name>Update Lead Generator field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateManagedFeestoDefault</fullName>
        <description>Update the Managed Exchange Fees fields to the default when an opportunity is created via lead conversion.</description>
        <field>Exchange_Fee__c</field>
        <formula>0.00</formula>
        <name>Update Managed Fees to Default</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateMigrationFees</fullName>
        <description>updates the migration fees on lead conversion</description>
        <field>Migration_Fees__c</field>
        <formula>0.00</formula>
        <name>Update Migration Fees</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateMossoFees</fullName>
        <description>Updates the Mosso Fees field when converted from a Lead.</description>
        <field>Mosso_Fees__c</field>
        <formula>0.00</formula>
        <name>Update Mosso Fees</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateNoReconEVA</fullName>
        <description>updates the no recon EVA field on closed won opportunities for BDCs</description>
        <field>No_Reconciliation_EVA__c</field>
        <literalValue>1</literalValue>
        <name>Update No Recon EVA</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateProposal</fullName>
        <description>Updates the Proposal field when the stage is set to Proposal.</description>
        <field>Proposal__c</field>
        <literalValue>1</literalValue>
        <name>Update Proposal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateProposalSentDate</fullName>
        <description>updates the proposal sent date field when the stage equals proposal sent.</description>
        <field>Proposal_Sent_Date__c</field>
        <formula>NOW()</formula>
        <name>Update Proposal Sent Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateRecTypetoManagedExchange</fullName>
        <field>RecordTypeId</field>
        <lookupValue>RSEmail</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update Rec Type to Managed Exchange</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateRecordType</fullName>
        <field>RecordTypeId</field>
        <lookupValue>ReadOnly</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateResolution</fullName>
        <field>Resolution_1__c</field>
        <literalValue>Nurture</literalValue>
        <name>Update Resolution</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateSetupFees</fullName>
        <description>updates the setup fees on lead conversion</description>
        <field>Setup_Fee__c</field>
        <formula>0.00</formula>
        <name>Update Setup Fees</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateSilverBulletApproved</fullName>
        <description>Updates the Silver Bullet Approval field.</description>
        <field>Silver_Bullet_Approval__c</field>
        <literalValue>1</literalValue>
        <name>Update Silver Bullet Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateSlicehostFeestoDefault</fullName>
        <description>Update the Slicehost Fees field to 0 by default.</description>
        <field>Slicehost_Fees__c</field>
        <formula>0.00</formula>
        <name>Update Slicehost Fees to Default</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateSplitCategoryonLeadConvert</fullName>
        <description>Updates the Split Category when a Lead is Converted.</description>
        <field>Split_Category__c</field>
        <literalValue>No Split</literalValue>
        <name>Update Split Category on Lead Convert</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateSplitPercentagewhennosplit</fullName>
        <description>updates the split percentage to 100% when it is no split</description>
        <field>Split_Percentage__c</field>
        <formula>1.00</formula>
        <name>Update Split Percentage when no split</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateSplitPercentagewhensplit</fullName>
        <description>updates the split percentage to 0% when it is a split</description>
        <field>Split_Percentage__c</field>
        <formula>0.00</formula>
        <name>Update Split Percentage when split</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateStatustoNurture</fullName>
        <field>Status__c</field>
        <literalValue>Nurture</literalValue>
        <name>Update Status to Nurture</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateUNASFees</fullName>
        <description>Updates the UNAS Fees to 0.00 when converted from a lead.</description>
        <field>UNAS_Fees__c</field>
        <formula>0.00</formula>
        <name>Update UNAS Fees</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateVMFees</fullName>
        <description>Updates VM Fees on lead conversion</description>
        <field>VM_Fees__c</field>
        <formula>0.00</formula>
        <name>Update VM Fees</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateVMReconciledDatewhenVM</fullName>
        <description>Updates the VM Reconciled Date when there are VM Fees.</description>
        <field>VM_Reconciled_Date__c</field>
        <formula>Today()</formula>
        <name>Update VM Reconciled Date when VM</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_30_free_days</fullName>
        <field>Free_Days__c</field>
        <formula>30</formula>
        <name>Update 30 free days</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Close_Date_on_Churn_Opp</fullName>
        <description>Updates the close date on churn opportunity to original close date</description>
        <field>CloseDate</field>
        <formula>PRIORVALUE(CloseDate)</formula>
        <name>Update Close Date on Churn Opp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_EVA_Ratio_Approved</fullName>
        <field>EVA_Ratio_Approved__c</field>
        <literalValue>1</literalValue>
        <name>Update EVA Ratio Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_New_Logo_on_Closed_Won</fullName>
        <description>Updates new logo commissions field when acquisition rep closes an opportunity</description>
        <field>New_Logo__c</field>
        <formula>1</formula>
        <name>Update New Logo on Closed Won</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_On_Demand_Reconciled_for_EMEA</fullName>
        <description>updates the on demand reconciled flag for EMEA</description>
        <field>On_Demand_Reconciled__c</field>
        <literalValue>1</literalValue>
        <name>Update On Demand Reconciled for EMEA</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_OpenStack_field</fullName>
        <description>updates the OpenStack field when the record type is OpenStack</description>
        <field>OpenStack__c</field>
        <literalValue>1</literalValue>
        <name>Update OpenStack field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_OpenStack_to_false</fullName>
        <description>updates OpenStack to false when the record type is changed from OpenStack but not to Read Only.</description>
        <field>OpenStack__c</field>
        <literalValue>0</literalValue>
        <name>Update OpenStack to false</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Opp_Name</fullName>
        <description>Changes the Opp name to &quot;Opp ID - Account Name&quot; on creation</description>
        <field>Name</field>
        <formula>Opportunity_ID__c  + &quot; - &quot;+ Account.Name</formula>
        <name>Update Opp Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PM_Pricing_Flag</fullName>
        <description>updates the PM pricing flag to true</description>
        <field>PM_Pricing__c</field>
        <literalValue>1</literalValue>
        <name>Update PM Pricing Flag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PM_Pricing_to_false</fullName>
        <description>updates the pm pricing flag to false</description>
        <field>PM_Pricing__c</field>
        <literalValue>0</literalValue>
        <name>Update PM Pricing to false</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Previous_Closed</fullName>
        <field>Previously_Closed__c</field>
        <literalValue>1</literalValue>
        <name>Update Previous Closed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SE_Date_when_populated</fullName>
        <field>SE_Date__c</field>
        <formula>TODAY()</formula>
        <name>Update SE Date when populated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_SE_Email_when_updated</fullName>
        <field>SE_Email__c</field>
        <formula>Solution_Engineer__r.Email</formula>
        <name>Update SE Email when updated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Stage_to_Closed_won</fullName>
        <field>StageName</field>
        <literalValue>Closed Won</literalValue>
        <name>Update Stage to Closed won</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Null</fullName>
        <description>updates the status from nurture to null when the nurture is rejected</description>
        <field>Status__c</field>
        <name>Update Status to Null</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_from_Validation_Pending</fullName>
        <description>updates stage from validation pending or contract kickback to closed won when it is CVP/OVT verifeid.</description>
        <field>StageName</field>
        <literalValue>Closed Won</literalValue>
        <name>Update from Validation Pending</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_to_Validation_Pending</fullName>
        <description>Updates the stage to Validation Pending when CVP Verified is not flagged.</description>
        <field>StageName</field>
        <literalValue>Validation Pending</literalValue>
        <name>Update to Validation Pending</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Updated_DB_Marketing_Date_to_todays_date</fullName>
        <description>updates the db marketing date to current date when a prospect opportunity is closed lost or closed rejected.</description>
        <field>DB_Marketing_Date__c</field>
        <formula>TODAY()</formula>
        <name>Updated DB Marketing Date to todays date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Updated_DB_Marketing_Field_to_true</fullName>
        <description>updates DB Marketing field to true when prospect opportunity is closed lost or closed rejected.</description>
        <field>DB_Marketing__c</field>
        <literalValue>1</literalValue>
        <name>Updated DB Marketing Field to true</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Updated_Opp_Stage_to_Sent_to_Nurture</fullName>
        <description>updates opportunity stage to sent to nurture when the nurture has been approved by LDT</description>
        <field>StageName</field>
        <literalValue>Sent to Nurture</literalValue>
        <name>Updated Opp Stage to Sent to Nurture</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Updatelastupdate</fullName>
        <description>updates the last update field on the opportunity when it is updated unless by an administrator</description>
        <field>Last_Update__c</field>
        <formula>IF(AND( LastActivityDate &gt; DATEVALUE(LastModifiedDate), LastActivityDate &lt;=  TODAY() ) , LastActivityDate,  DATEVALUE( LastModifiedDate))</formula>
        <name>Update last update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>ClosedWontoeConnect</fullName>
        <apiVersion>8.0</apiVersion>
        <description>sends opportunity data to eConnect</description>
        <endpointUrl>https://econnect.rackspace.com/closed_not_forwarded_opp/xfer</endpointUrl>
        <fields>Id</fields>
        <fields>Opportunity_ID__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>tbuchhol@rackspace.com.core</integrationUser>
        <name>Closed Won to eConnect</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>36 Month Contract to Accounting - EMEA</fullName>
        <actions>
            <name>EmailnotifyingAccountingthatanopportunitycontractlengthis36monthshasbeencre_d_2</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Contract_Length__c</field>
            <operation>greaterOrEqual</operation>
            <value>36</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>EMEA</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>Q Team,LDT</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Split_Category__c</field>
            <operation>notEqual</operation>
            <value>Split - Secondary</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>notEqual</operation>
            <value>System Administrator,Rackspace - eConnect</value>
        </criteriaItems>
        <description>Email to Accounting</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>6 month follow up</fullName>
        <actions>
            <name>x6MonthFollowup</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.UserRoleId</field>
            <operation>equals</operation>
            <value>US Enterprise Field SA 1</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.CloseDate</field>
            <operation>equals</operation>
            <value>NEXT 180 DAYS</value>
        </criteriaItems>
        <description>This event will trigger 6 months after a &quot;Closed/Lost&quot; for the sales rep to follow back up with the acct to see how they are doing.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>A Critical Sites Opp has been Closed Won</fullName>
        <actions>
            <name>A_Critical_Sites_Opp_has_been_Closed_Won</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Probability</field>
            <operation>equals</operation>
            <value>100</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Validation Pending,Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Overlay_Products__c</field>
            <operation>equals</operation>
            <value>Critical Sites</value>
        </criteriaItems>
        <description>alert to Shokor every time a Critical Sites opp has been closed.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>A Potential Critical Sites Opp is Engaged</fullName>
        <actions>
            <name>Potential_Critical_Sites_Opportunity</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>Hong Kong,Australia,EMEA,Benelux</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>&quot;USD 20,000&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
            <value>Closed Lost,Closed Won</value>
        </criteriaItems>
        <description>Sends an email to Critical Sites team when an open opp is populated with an amount of $20k or greater.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>A RES %245k%2B Deal Has Been Closed Won</fullName>
        <actions>
            <name>A_New_RES_Deal_has_been_Closed_Won</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 and 6</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Support_Segment__c</field>
            <operation>equals</operation>
            <value>Intensive</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>&quot;USD 5,000&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>Hong Kong,Australia,EMEA,Benelux</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>US Ent - FSE,US Ent - SAE</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.econnect_received__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Sends an email to Erin which is auto-forwarded to Onboarding team, alerting them about the new customer.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>APAC %3E%241000 closed won</fullName>
        <actions>
            <name>APAC_Email_to_Leadership_and_APAC_team_when_a_1000_is_closed_won</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>Hong Kong,Australia,India,APAC</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>&quot;USD 1,000&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.IsWon</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>An email to go out to Sales Management and Leadership when an opp with a value &gt;=$1000 is won.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Alert to Managed Colo</fullName>
        <actions>
            <name>Email_alert_For_Managed_Colo_EMEA</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 or 2) and 3</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Requested_Products__c</field>
            <operation>includes</operation>
            <value>Managed Colocation</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Opportunity_Type__c</field>
            <operation>equals</operation>
            <value>Managed Colocation</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>EMEA,Benelux</value>
        </criteriaItems>
        <description>Alert to Andrew Jardine when a new lead of the type Managed Colo or a lead interested in Managed Colo is created</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>An Intensive %245k%2B Deal Has Been Closed Won</fullName>
        <actions>
            <name>A_New_Intensive_Customer_has_been_Signed</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 and 6</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Support_Segment__c</field>
            <operation>equals</operation>
            <value>Intensive</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>&quot;USD 5,000&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>Hong Kong,Australia,EMEA,Benelux</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>,US Ent - Install Base,US CorpIB</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.OwnerId</field>
            <operation>notEqual</operation>
            <value>Corey Huish,Chris Benedict</value>
        </criteriaItems>
        <description>Sends an email to Erin which is auto-forwarded to Onboarding team, alerting them about the new customer.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Big Deal Alert</fullName>
        <actions>
            <name>BigDealAlertToEMEAManagers</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 AND 2)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>EMEA,benelux</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>&quot;GBP 7,000&quot;</value>
        </criteriaItems>
        <description>ALL EMEA and Benelux deals:
Deals above £7,000</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Big Deal Alert - 10K</fullName>
        <actions>
            <name>An_Opportunity_in_the_amount_of_10k_Has_Been_Created</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 AND 2)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>EMEA,benelux,nordic</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>&quot;USD 10,000&quot;</value>
        </criteriaItems>
        <description>All US Deals:
Deals above 10,000</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Big Deal Alert EMEA SMB</fullName>
        <actions>
            <name>EMEA_Email_Alert_to_Jan_John_and_Reema</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 AND 2)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>EMEA SMB New,EMEA SMB Partner,EMEA SMB BDC</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>&quot;GBP 3,000&quot;</value>
        </criteriaItems>
        <description>EMEA SMB deals:
Deals above £3,000</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Big Deal Alert Int and SMB Complex</fullName>
        <actions>
            <name>EMEA_Email_Alert_to</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 AND 2)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>EMEA SMb International,EMEA SMB Complex</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>&quot;GBP 5,000&quot;</value>
        </criteriaItems>
        <description>EMEA International and SMB Complex deals:
Deals above £5,000</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Check Rejection Time frame</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Status__c</field>
            <operation>equals</operation>
            <value>Reject</value>
        </criteriaItems>
        <description>Check if Rejection is not submitted for approval with in 2 days</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>EmailToOwnerRejectionhasnotbeensubmittedforapproval</name>
                <type>Alert</type>
            </actions>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Close Date Changed</fullName>
        <actions>
            <name>ALERT_Close_Date_on_a_Closed_Won_Opp_has_been_changed</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email notification to administrators when the Close Date of a Closed Won opp has been changed by someone other than the administrator</description>
        <formula>AND(
( $RecordType.DeveloperName =&apos;Read Only&apos;),
OR
(
ISCHANGED(CloseDate),
ISCHANGED( StageName)
),
 NOT($Profile.Name = &apos;System Administrator&apos;),
NOT($Profile.Name = &apos;Rackspace - eConnect&apos;)
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Closed Won Opps %3E 35K</fullName>
        <actions>
            <name>Email_notification_for_Closed_Won_Opps_35K</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>Hong Kong,Australia,EMEA,Benelux</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>&quot;USD 35,000&quot;</value>
        </criteriaItems>
        <description>Sends an email to Melissa Newell for all new acq closed won opps with MRR greater than 35K</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Critical Site Opp Created</fullName>
        <actions>
            <name>A_Critical_Sites_Opp_Has_Been_Created_in_SF</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Overlay_Products__c</field>
            <operation>equals</operation>
            <value>Critical Sites</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>notEqual</operation>
            <value>Contract Kickback,Validation Pending,Closed Won,Closed Rejected/Month-Month,Closed Lost,Closed Rejected</value>
        </criteriaItems>
        <description>A critical sites opp has been created in SF.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Default Fees when converted from Lead</fullName>
        <actions>
            <name>UpdateEVAValue</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateHostingFeestoDefault</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateManagedFeestoDefault</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateMigrationFees</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateMossoFees</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateSetupFees</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateSlicehostFeestoDefault</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateSplitCategoryonLeadConvert</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateUNASFees</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateVMFees</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Created_from_Lead__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Used to default the fees fields when an opportunity is created via lead conversion.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>EMEA Alert to UK Purchasing</fullName>
        <actions>
            <name>EMEA_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>EMEA,Benelux</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Solution_Engineer__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Validation Pending</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Requested_Products__c</field>
            <operation>equals</operation>
            <value>Shared Load Balancer</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>EMEA Bandwidth Upgrade notification</fullName>
        <actions>
            <name>Notification_of_a_Bandwidth_Revenue_Ticket</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>EMEA,Benelux</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Name</field>
            <operation>contains</operation>
            <value>bandwidth,band width</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>EMEA Email to Cloud Automation Team</fullName>
        <actions>
            <name>EMEA_Email_alert_to_Cloud_Automation_Team_when_a_new_opp_is_created</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.CreatedById</field>
            <operation>equals</operation>
            <value>EMEA Cloud Bill Uploader</value>
        </criteriaItems>
        <description>An email to the Cloud Booking Automation Team when a new opp is created by the Cloud Bill File Uploader.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>EMEA SMB %3E%C2%A31000 closed won</fullName>
        <actions>
            <name>EMEA_SMB_GBP_1000_opp_closed_won</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>EMEA SMB</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>&quot;GBP 1,000&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.IsWon</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>An email to go out to SMB Sales Management when an opp with a value &gt;=£1000 is won.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email To Benelux Manager for New Lead</fullName>
        <actions>
            <name>Alert_to_benelux_Manager_when_New_Lead_assigned_to_Benelux</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>Benelux</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Lead_Generator_Role__c</field>
            <operation>contains</operation>
            <value>Q Team,QTeam</value>
        </criteriaItems>
        <description>An email goes out to the Benelux Manager when the Qteam assigns a new lead to Benelux</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email alert for Cloud deals%3E%C2%A31000</fullName>
        <actions>
            <name>EMEA_Email_to_SMB_Sales_Director_and_Cloud_Manager_when_Cloud_opp_1000</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Email alert to Jan and Michael Johnson informing them of a Cloud lead that has Cloud Fees&gt;= £1000</description>
        <formula>AND
(
ISPICKVAL($User.Group__c,&quot;Sales - Jan&quot;),
 (
(Slicehost_Fees__c  +  Mosso_Fees__c )&gt;=1000)

)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email alert to EMEA Sales Rep</fullName>
        <actions>
            <name>ALERTALeadpassedtoyouhasnotbeencontacted</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 and 2</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Has_the_lead_received_follow_up__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>EMEA,Benelux</value>
        </criteriaItems>
        <description>Email alert to EMEA Sales Rep after the lead follow up survey</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email alert to EMEA Sales Rep-Urgent Requirement</fullName>
        <actions>
            <name>EMEAEmailalerttosalesrepwhenleadhasurgentrequirements</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Urgent_requirements__c</field>
            <operation>equals</operation>
            <value>Other,Pricing,Service Options,Sales collateral</value>
        </criteriaItems>
        <description>Email alert to EMEA Sales Rep when a lead has urgent requirements</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email alert to US Sales Rep</fullName>
        <active>false</active>
        <booleanFilter>1 and 2 and 3</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Has_the_lead_received_follow_up__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>US,Hong Kong,Australia</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>EMEA,Benelux</value>
        </criteriaItems>
        <description>Email alert to US Sales Rep after the lead follow up survey</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Emerging Closed Won Opps</fullName>
        <actions>
            <name>Email_notification_for_Emerging_Opps_0_5K</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.Service_Level__c</field>
            <operation>equals</operation>
            <value>Managed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>Hong Kong,Australia,EMEA,Benelux</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>lessOrEqual</operation>
            <value>&quot;USD 5,000&quot;</value>
        </criteriaItems>
        <description>Sends an email to the SMB Implementation team for any managed SLA opps with MRR 0-5K</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Fanatical Frontline Lead Generator Field</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.CreatedById</field>
            <operation>equals</operation>
            <value>Danny Carreno,Chris Eckmann,Adam Hansen</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Intensive SLA Closed Won Opps</fullName>
        <actions>
            <name>Email_notification_for_Intensive_SLA_Opps_0_35K</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Service_Level__c</field>
            <operation>equals</operation>
            <value>Intensive</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>Hong Kong,Australia,EMEA,Benelux</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>lessThan</operation>
            <value>&quot;USD 35,000&quot;</value>
        </criteriaItems>
        <description>Sends an email to Rachel, Brook, and Patrick for all new acq intensive SLA closed won opps with MRR ranging from 0-35K</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Lead Followup Survey EMEA</fullName>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Email_Shadow_for_Survey__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Lead_Generator_Role__c</field>
            <operation>equals</operation>
            <value>EMEA Q Team</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>EMEA Q Team,LDT</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Status__c</field>
            <operation>notEqual</operation>
            <value>Pending Rejection,Rejected,Reject,Approval Rejected</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>Mosso</value>
        </criteriaItems>
        <description>Email to go out to the lead 48 hours after Lead Conversion including the link to the survey</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>LeadFollowupSurveyEMEA</name>
                <type>Alert</type>
            </actions>
            <timeLength>2</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Lead Followup Survey US</fullName>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 and 6 and 7</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Email_Shadow_for_Survey__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Lead_Generator_Role__c</field>
            <operation>contains</operation>
            <value>US Q Team</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Status__c</field>
            <operation>notEqual</operation>
            <value>Pending Rejection,Rejected,Reject,Approval Rejected</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>Mosso</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>US Q Team,LDT</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>notEqual</operation>
            <value>Online Order,Ayuda,Cloud Sales</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Split_Category__c</field>
            <operation>notEqual</operation>
            <value>Split - Secondary</value>
        </criteriaItems>
        <description>Email to go out to the lead 48 hours after Lead Conversion including the link to the survey.</description>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>LeadFollowupSurveyUS</name>
                <type>Alert</type>
            </actions>
            <timeLength>2</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Managed SLA Closed Won Opps</fullName>
        <actions>
            <name>Email_notification_for_Managed_SLA_Opps_5_35K</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Service_Level__c</field>
            <operation>equals</operation>
            <value>Managed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>Hong Kong,Australia,EMEA,Benelux</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>&quot;USD 5,000&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>lessThan</operation>
            <value>&quot;USD 35,000&quot;</value>
        </criteriaItems>
        <description>Sends an email to Rachel, Brook, and Patrick for all new acq managed SLA closed won opps with MRR ranging from 5-35K</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Need Equifax Approval</fullName>
        <actions>
            <name>NeedsApprovalStatus</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>(1 AND 2 AND 3 AND 4 and 5) or (1 and 2 and 3 and 4 and 6 and 7)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Equifax_Grade__c</field>
            <operation>equals</operation>
            <value>Amber,Red</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Equifax_Approved__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Split_Category__c</field>
            <operation>equals</operation>
            <value>Split - Primary,No Split</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>notEqual</operation>
            <value>System Administrator,Rackspace - eConnect</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>Mailtrust</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Exchange_Fee__c</field>
            <operation>greaterThan</operation>
            <value>GBP 100</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>Mailtrust</value>
        </criteriaItems>
        <description>opportunity needs Credit Report Approval</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Notify SE of Closed Won Opportunity</fullName>
        <actions>
            <name>Notifies_US_when_an_opportunity_is_closed_won</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Solution_Engineer__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>US,Hong Kong,Australia</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>EMEA,Benelux</value>
        </criteriaItems>
        <description>Notifies SE when an opportunity is closed won.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Opp passed to RES for Deal Center</fullName>
        <actions>
            <name>RES_opp_has_been_passed_to_Nora</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.OwnerId</field>
            <operation>equals</operation>
            <value>Nora Hushagen</value>
        </criteriaItems>
        <description>Email sent to Deal Center alerting that opp has been passed to Nora.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Needs Approval Enterprise-EMEA</fullName>
        <actions>
            <name>NeedsApprovalStatus</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>(5 AND 6 and 7 AND 2 AND 1) OR (5 AND 6 and 7 AND 3 AND 4)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Approval_Amount__c</field>
            <operation>greaterOrEqual</operation>
            <value>&quot;USD 10,000&quot;,&quot;EUR 7,500&quot;,&quot;GBP 5,000&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount_Approval__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.EVA_Grade__c</field>
            <operation>equals</operation>
            <value>F,C+,C-,C</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.EVA_Approval__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>EMEA Enterprise,Web Design</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Split_Category__c</field>
            <operation>equals</operation>
            <value>Split - Primary,No Split</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Managed Exchange 03,Mailtrust,Modification,Mosso,New</value>
        </criteriaItems>
        <description>When an Opportunity for Enterprise meets these conditions the Status should change to &quot;Needs Approval&quot;</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Needs Approval SMB-EMEA</fullName>
        <actions>
            <name>NeedsApprovalStatus</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>(1 and 2 and 3 and 4 and 5) or (3 and 4 and 5 and 6 and 7) or (3 and 4 and 5 and 8 and 9)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.EVA_Grade__c</field>
            <operation>equals</operation>
            <value>F,C+,C-,C</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.EVA_Approval__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>EMEA SMB,Benelux,EMEA Customer Fit,EMEA RES</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Split_Category__c</field>
            <operation>equals</operation>
            <value>Split - Primary,No Split</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>contains</operation>
            <value>RS Email,E&amp;A Online,Modification,RS Cloud,New</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Equifax_Grade__c</field>
            <operation>equals</operation>
            <value>Amber,Red</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Equifax_Approved__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Silver_Bullet__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Silver_Bullet_Approval__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>When an Opportunity for SMB meets these conditions the Status should change to &quot;Needs Approval&quot;</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Needs Approval SMB-US</fullName>
        <actions>
            <name>NeedsApprovalStatus</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>(5 AND 6 AND 2 AND 1) OR (5 AND 6 and 3 AND 4) or (7 and 8 and 5 AND 6)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Approval_Amount__c</field>
            <operation>greaterOrEqual</operation>
            <value>&quot;USD 5,000&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount_Approval__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.EVA_Grade__c</field>
            <operation>equals</operation>
            <value>B-,F,C+,C-,C</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.EVA_Approval__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>US Mailtrust</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Split_Category__c</field>
            <operation>equals</operation>
            <value>Split - Primary,No Split</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Silver_Bullet__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Silver_Bullet_Approval__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>When an Opportunity for SMB meets these conditions the Status should change to &quot;Needs Approval&quot;</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity Needs Approval-US</fullName>
        <actions>
            <name>NeedsApprovalStatus</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 and 2 and 3 and 4 and 5) or (1 and 2 and 3 and 6 and 7) or (1 and 2 and 3 and 8 and 9 and 10 and 11 and 12) or (1 and 2 and 3 and 13 and 9 and 10 and (11 or 12))</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>US,Australia</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>EMEA,Benelux</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Split_Category__c</field>
            <operation>equals</operation>
            <value>Split - Primary,No Split</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.EVA_Grade__c</field>
            <operation>equals</operation>
            <value>F,C+,C-,C</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.EVA_Approval__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Silver_Bullet__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Silver_Bullet_Approval__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Equifax_Grade__c</field>
            <operation>equals</operation>
            <value>Amber</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Equifax_Approved__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Credit_Card_ACH__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Prepay_Amount__c</field>
            <operation>lessOrEqual</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Setup_Fee__c</field>
            <operation>lessOrEqual</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Equifax_Grade__c</field>
            <operation>equals</operation>
            <value>Red</value>
        </criteriaItems>
        <description>When an Opportunity for US meets these conditions the Status should change to &quot;Needs Approval&quot;</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Opportunity over 10K UK</fullName>
        <actions>
            <name>AmountOver10KAlertforUKSE</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>&quot;USD 10,000&quot;,&quot;EUR 7,000&quot;,&quot;GBP 5,000&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Modification,New</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>Benelux,EMEA</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>Q Team,LDT,Rackspace</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>notEqual</operation>
            <value>System Administrator,Rackspace - eConnect</value>
        </criteriaItems>
        <description>Email sent to UK SEs.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>RFP reason lost field</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.RFP_Due_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <description>If a deal involves an RFP and is closed lost, a reason for why it was lost must be provided.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Remove VM Reconciled remove VM</fullName>
        <actions>
            <name>RemoveVMReconciledDateremoveVM</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>RemoveVMReconciledremoveVM</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.VM_Fees__c</field>
            <operation>equals</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.VM_Fees__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Removes the VM reconciled and vm reconciled date when the VM Fees are removed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Reset EVA approval</fullName>
        <actions>
            <name>ResetEVAApprovalFlag</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.EVA_Approval__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.EVA_Grade__c</field>
            <operation>equals</operation>
            <value>C,C-,C+,F</value>
        </criteriaItems>
        <description>If the Opportunity was approved for EVA  C+ but the EVA value is changed to C+,C,C-,F the system will reset the EVA approval flag</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send Email When Opp is Closed to AM</fullName>
        <actions>
            <name>Email_to_AM_when_opp_is_closed_on_account</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 AND 6</booleanFilter>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Customer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Support_Team__c</field>
            <operation>notEqual</operation>
            <value>,Team UK M5,Team UK M4,Team UK M3,Team UK M2,Team UK S1,Team UK M1,Int 9 (Windows),Team MC UK-1,Int 2 (Linux),Int 5 (Windows),Int 6 (Linux),Int 4 (Linux),Int 1 (Windows),Int 7 (Windows),Int 3 (Windows),Team UK M6</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Split_Category__c</field>
            <operation>notEqual</operation>
            <value>Split - Secondary</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>- AM,- AC</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Final_Opportunity_Type__c</field>
            <operation>notEqual</operation>
            <value>Revenue Ticket</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send Email to SE for committed opportunity - US</fullName>
        <actions>
            <name>Send_email_to_SE_for_commit_opportunity_US</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.ForecastCategoryName</field>
            <operation>equals</operation>
            <value>Commit</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Solution_Engineer__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>US,Hong Kong,Australia</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>EMEA,Benelux</value>
        </criteriaItems>
        <description>Sends an email to the SE assigned when an opportunity is set to committed for the US.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send Email to SE when One Off and %3E60%25 EMEA</fullName>
        <actions>
            <name>SendEmailToSEforOneOffand60EMEA</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.One_Off__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Probability</field>
            <operation>greaterOrEqual</operation>
            <value>.60</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Probability</field>
            <operation>lessThan</operation>
            <value>1.00</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.One_Off_Approved__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Territory__c</field>
            <operation>equals</operation>
            <value>Benelux,EMEA,Nordic</value>
        </criteriaItems>
        <description>Send an Email to SE when the One Off is checked and the % Probability is greater than 60% EMEA</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send Email to SE when One Off and %3E60%25 US</fullName>
        <actions>
            <name>SendEmailtoSEforOneOffand60US</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 AND 2 AND 3 AND 4 AND 5 AND 6) OR (1 AND 7 AND 3 AND 4 AND 5 AND 8 and 9) OR (1 AND 7 AND 3 AND 4 AND 5 AND 10)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.One_Off__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Probability</field>
            <operation>greaterOrEqual</operation>
            <value>.60</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Probability</field>
            <operation>lessThan</operation>
            <value>1.00</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.One_Off_Approved__c</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>US Enterprise,US SMB,Vertical</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>BDC,LOR</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Probability</field>
            <operation>greaterOrEqual</operation>
            <value>.50</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>US SMB,US Enterprise</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>BDC,LOR</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>Hong Kong</value>
        </criteriaItems>
        <description>Send an Email to SE when the One Off is checked and the % Probability is greater than 60% US</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send PS Email for EMEA PS Opportunity created</fullName>
        <actions>
            <name>Email_alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Professional Services</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>EMEA,APAC,Benelux</value>
        </criteriaItems>
        <description>Sends an email to PS when a PS opportunity is created.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Send PS Email for PS Opportunity created</fullName>
        <actions>
            <name>SendEmailtoPSwhenaPSopportunityiscreated</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Professional Services</value>
        </criteriaItems>
        <description>Sends an email to PS when a PS opportunity is created.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Send email Q Mgr when opp passed non-EMEA</fullName>
        <actions>
            <name>Send_email_to_EMEA_Q_Mgr_opp_passed_to_other_team</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>EMEA,Benelux</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Territory__c</field>
            <operation>equals</operation>
            <value>EMEA,DACH,Benelux,Nordic,Middle East</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Max_Lead_Role__c</field>
            <operation>contains</operation>
            <value>EMEA QTeam,EMEA LDT</value>
        </criteriaItems>
        <description>sends and email to the Q Manager if EMEA Q sends opportunity to other team</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send email on SE change</fullName>
        <actions>
            <name>Send_email_to_SE_on_SE_change_on_Opportunity</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>ISCHANGED(Solution_Engineer__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Send email to EMEA rep on migration 90 days</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Category__c</field>
            <operation>equals</operation>
            <value>Migration</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>EMEA,Benelux</value>
        </criteriaItems>
        <description>sends and email to the sales rep when a migration opportunity is past 90 after close</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Send_email_to_EMEA_rep_90_days_after_migration_close</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Opportunity.CloseDate</offsetFromField>
            <timeLength>90</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Send email to SE for One Off EMEA</fullName>
        <actions>
            <name>SendEmailtoSEforOneOffwhenuncheckedandClosedWonEMEA</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Send an email to SE when One Off is unchecked after checked and stage = closed won for EMEA</description>
        <formula>AND(ISPICKVAL(StageName, &quot;Closed Won&quot;), PRIORVALUE(One_Off__c) = True, ISCHANGED(One_Off__c), ISCHANGED(One_Off__c), NOT(One_Off_Approved__c),  OR(ISPICKVAL(Territory__c, &quot;EMEA&quot;), ISPICKVAL(Territory__c, &quot;Benelux&quot;), ISPICKVAL(Territory__c, &quot;Nordic&quot;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Send email to SE for One Off US</fullName>
        <actions>
            <name>SendEmailtoSEforOneOffwhenuncheckedandClosedWonUS</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Send an email to SE when One Off is unchecked after checked and stage = closed won US</description>
        <formula>AND(ISPICKVAL(StageName, &quot;Closed Won&quot;), 
PRIORVALUE(One_Off__c) = True,  ISCHANGED(One_Off__c), 
NOT(One_Off_Approved__c),  
NOT(CONTAINS(Owner_Role__c, &quot;EMEA&quot;)),
OR(CONTAINS(Owner_Role__c, &quot;US&quot;), 
CONTAINS(Owner_Role__c, &quot;Hong Kong&quot;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Send email to SE on Additional SE change</fullName>
        <actions>
            <name>Send_email_to_SE_when_Additional_SE_field_changes</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>send an email to the SE when the additional solution engineer field is changed.</description>
        <formula>AND(SE_Secondary_Email__c &lt;&gt; &quot;&quot;,
SE_Secondary_Email__c &lt;&gt;  Additional_Solution_Engineer__r.Email)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send email to SE on SE change</fullName>
        <actions>
            <name>Send_email_to_SE_when_SE_field_changes</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>send an email to the SE when the solution engineer field is changed.</description>
        <formula>AND(SE_Email__c &lt;&gt; &quot;&quot;,
SE_Email__c &lt;&gt;  Solution_Engineer__r.Email)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send email when opp gets sent back from nurture</fullName>
        <actions>
            <name>Send_email_to_rep_when_nurture_opp_is_sent_back</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Sends an email to the sales rep when a nurture opportunity is sent back to them.</description>
        <formula>AND(ISPICKVAL(StageName, &quot;Qualify&quot;),
ISPICKVAL(PRIORVALUE(StageName), &quot;Sent to Nurture&quot;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Set RT to Read Only</fullName>
        <actions>
            <name>SettoReadOnly</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>2 AND 1</booleanFilter>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost,Closed Won,Closed Rejected</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>notEqual</operation>
            <value>Churn,Renewal,Credit Memo,Cloud Sales,Cloud PS</value>
        </criteriaItems>
        <description>Set Record Type to Read Only when the Opportunity is set to &quot;Closed Won&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Set Record Type for Managed Exchange</fullName>
        <actions>
            <name>UpdateRecTypetoManagedExchange</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Opportunity_Type__c</field>
            <operation>equals</operation>
            <value>Mail</value>
        </criteriaItems>
        <description>When an Oppty gets converted we need to identified if Lead is Managed Exchange</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Set Rejection Status</fullName>
        <actions>
            <name>SetRejectedDate</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SetStatustoReject</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Reject__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>When the Rejection flag gets checked change status to &quot;Reject&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Set Stage to Closed Won</fullName>
        <actions>
            <name>Update_Stage_to_Closed_won</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Custom</value>
        </criteriaItems>
        <description>Sets the Stage to Closed Won from Closed Custom when using the Close Won Wizard.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Set Stage to Validation Pending when not CVP Verified</fullName>
        <actions>
            <name>Update_to_Validation_Pending</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5 and 6</booleanFilter>
        <criteriaItems>
            <field>Opportunity.cvp_verified__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Custom,Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Final_Opportunity_Type__c</field>
            <operation>notEqual</operation>
            <value>Mail,Cloud,Managed Cloud</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Split_Category__c</field>
            <operation>equals</operation>
            <value>Split - Primary,No Split</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Intensive__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>notEqual</operation>
            <value>Cloud Sales,Cloud PS</value>
        </criteriaItems>
        <description>Sets the Stage to Validation Pending when first closed won if the CVP Verified for US only...contract only</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Set Status to Active</fullName>
        <actions>
            <name>SetStatustoActive</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 and 2 and 3 and 4 and 5)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Status__c</field>
            <operation>equals</operation>
            <value>Needs Approval</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.EVA_Grade__c</field>
            <operation>equals</operation>
            <value>A,B,B-,A++,A+,B+,NA,A-</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Split_Category__c</field>
            <operation>equals</operation>
            <value>Split - Secondary</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Equifax_Grade__c</field>
            <operation>notEqual</operation>
            <value>Amber,Red</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Silver_Bullet__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>When Opportunity no longer meets the conditions of approval : Set Status to Active.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Survey to Lost Lead</fullName>
        <actions>
            <name>EMEA_only_Closed_Lost_Survey</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Resolution_1__c</field>
            <operation>notEqual</operation>
            <value>Mass Close</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>EMEA,Benelux</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Email_Shadow_for_Survey__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>A Clicktools survey to go to the lost lead only when the resolution is not &quot;Mass Close&quot;.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Account when nurture</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Status__c</field>
            <operation>equals</operation>
            <value>Nurture</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update DB Marketing field when closed lost - US</fullName>
        <actions>
            <name>Updated_DB_Marketing_Date_to_todays_date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Updated_DB_Marketing_Field_to_true</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2 AND 3 AND 4 AND 5</booleanFilter>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Prospect</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost,Closed Rejected</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>US,Hong Kong,Australia</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>UK,LDT,Q Team</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>notEqual</operation>
            <value>Cloud Sales</value>
        </criteriaItems>
        <description>updates the db marketing checkbox when a prospect account is closed lost or closed rejected - US ONLY</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Free Days %3D 30</fullName>
        <actions>
            <name>Update_30_free_days</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Close_Incentives__c</field>
            <operation>equals</operation>
            <value>30 Days Free</value>
        </criteriaItems>
        <description>Updates the free days field to 30 when &quot;30 free days&quot; is selected in clsoe incentive</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Hosting Reconciled Date</fullName>
        <actions>
            <name>UpdateHostingReconciledDate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.cvp_verified__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Updates the hosting reconciled date when the CVP Verified gets checked.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Lead Date Passed</fullName>
        <actions>
            <name>UpdateLeadDatePassed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Stamps new opportunities lead date passed with current date</description>
        <formula>AND(ISBLANK(Lead_Date_Passed__c), 
ISBLANK(LDT_Date_Passed__c),
OR(NOT(ISPICKVAL(StageName, &quot;Closed Won&quot;)),
NOT(ISPICKVAL(StageName, &quot;Closed Lost&quot;))),
NOT(CONTAINS(Owner_Role__c, &quot;Q Team&quot;)),
NOT(CONTAINS(Owner_Role__c, &quot;LDT&quot;)),
NOT(CONTAINS(Owner_Role__c, &quot;Frontline&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Lead Generator</fullName>
        <actions>
            <name>UpdateLeadGeneratorfield</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Stamps new opportunities when they get assigned to a non-Qteam or non-LDT user.</description>
        <formula>OR 
(AND( Lead_Generator__c = &quot;&quot;, 
CreatedById &lt;&gt; OwnerId, 
OR($UserRole.Name = &quot;US Q Team 1&quot;, 
$UserRole.Name = &quot;US Q Team 2&quot;, 
$UserRole.Name = &quot;US Q Team 3&quot;,
$UserRole.Name = &quot;US Fanatical Frontline&quot;,
$UserRole.Name = &quot;US LDT&quot;, 
$UserRole.Name = &quot;US Enterprise LDT&quot;, 
$UserRole.Name = &quot;EMEA Q Team&quot;, 
$UserRole.Name = &quot;EMEA LDT&quot;)), 
(OR(AND( Lead_Generator__c = &quot;&quot;, 
$UserRole.Name &lt;&gt; &quot;US Q Team 1&quot;, 
$UserRole.Name &lt;&gt; &quot;US Q Team 2&quot;,
$UserRole.Name &lt;&gt; &quot;US Q Team 3&quot;, 
$UserRole.Name &lt;&gt; &quot;US Fanatical Frontline&quot;,
$UserRole.Name &lt;&gt; &quot;US LDT&quot;, 
$UserRole.Name &lt;&gt; &quot;US Enterprise LDT&quot;, 
$UserRole.Name &lt;&gt; &quot;EMEA Q Team&quot;, 
$UserRole.Name &lt;&gt; &quot;EMEA LDT&quot;))))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update No Recon EVA</fullName>
        <actions>
            <name>UpdateNoReconEVA</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.No_Reconciliation_EVA__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>BDC,LOR,Development</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>US</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>Updates the no recon EVA for closed won opportunities by BDCs</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update OpenStack field</fullName>
        <actions>
            <name>Update_OpenStack_field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_PM_Pricing_Flag</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>OpenStack</value>
        </criteriaItems>
        <description>updates the OpenStack field when the record type is OpenStack</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update OpenStack when not OpenStack</fullName>
        <actions>
            <name>Update_OpenStack_to_false</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_PM_Pricing_to_false</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>notEqual</operation>
            <value>Read Only,OpenStack</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.OpenStack__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>updates OpenStack to remove when the record type is changed but not to Read Only</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Opportunity name</fullName>
        <actions>
            <name>Update_Opp_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Final_Opportunity_Type__c</field>
            <operation>notEqual</operation>
            <value>Revenue Ticket</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>RS Email,E&amp;A Online,Modification,New</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>contains</operation>
            <value>EMEA,Benelux,Middle East</value>
        </criteriaItems>
        <description>Sets the opp name to &quot;Opp ID - Account Name&quot; on creation. Only changes the name on creation, not again.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Proposal</fullName>
        <actions>
            <name>UpdateProposal</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won,Justify,Decide,Validate</value>
        </criteriaItems>
        <description>Updates the Proposal field when the stage is set to Validate.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Proposal Sent Date</fullName>
        <actions>
            <name>UpdateProposalSentDate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won,Justify,Decide,Validate</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Proposal_Sent_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>updates proposal sent date the first time stage = validate.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update SE Date when populated</fullName>
        <actions>
            <name>Update_SE_Date_when_populated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Solution_Engineer__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Split Percentage when no split</fullName>
        <actions>
            <name>UpdateSplitPercentagewhennosplit</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Split_Category__c</field>
            <operation>equals</operation>
            <value>No Split</value>
        </criteriaItems>
        <description>updates the split percentage to 100 when no split</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Split Percentage when split</fullName>
        <actions>
            <name>UpdateSplitPercentagewhensplit</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>updates the split percentage to null when it is a split</description>
        <formula>AND(ISPICKVAL(PRIORVALUE(Split_Category__c),&quot;No Split&quot;), 
OR(ISPICKVAL( Split_Category__c , &quot;Split - Primary&quot;), ISPICKVAL(Split_Category__c , &quot;Split - Secondary&quot;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Stage from Validation Pending</fullName>
        <actions>
            <name>Update_from_Validation_Pending</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 and 4 and (2 or 3)</booleanFilter>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Validation Pending,Contract Kickback</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.cvp_verified__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Intensive__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>equals</operation>
            <value>Read Only</value>
        </criteriaItems>
        <description>updates the stage from validation pending or contract kickback to closed won when the opportunity has been CVP/OVT verified.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update VM Reconciled Date when Closed Won</fullName>
        <actions>
            <name>UpdateVMReconciledDatewhenVM</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.VM_Fees__c</field>
            <operation>notEqual</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.VM_Fees__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>Adds the VM Reconciled Date when VM Fees and Closed Won</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update VM Reconciled when VM</fullName>
        <actions>
            <name>CheckVMReconciledwhenVM</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.VM_Fees__c</field>
            <operation>greaterThan</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Owner_Role__c</field>
            <operation>notContain</operation>
            <value>Q Team,LDT</value>
        </criteriaItems>
        <description>Sets the VM Reconciled checkbox when there are VM Fees.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update the last update</fullName>
        <actions>
            <name>Updatelastupdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>updates the last update field so that only when the update not made by an administrator</description>
        <formula>AND(NOT($Profile.Name = &apos;System Administrator&apos;), 
OR(LastModifiedDate &lt;=  NOW (), 
LastActivityDate = TODAY ()))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update_Amount</fullName>
        <actions>
            <name>AmountinOpportunity</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>SetApprovalReason</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 OR 2 OR 3 OR 4 OR 5 OR 6 or 7 or 8 or 9 or 10 or 11 or 12 or 13 or 14 or 15 or 16 or 17 or 18 or 19 or 20 or 21 or 23 or 24 or 25) and 22</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Exchange_Fee__c</field>
            <operation>greaterThan</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Hosting_Fee__c</field>
            <operation>greaterThan</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Exchange_Fee__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Hosting_Fee__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Exchange_Fee__c</field>
            <operation>lessThan</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Hosting_Fee__c</field>
            <operation>lessOrEqual</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Mosso_Fees__c</field>
            <operation>greaterThan</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Mosso_Fees__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Mosso_Fees__c</field>
            <operation>lessThan</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Service_Fees_MRR__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Service_Fees_MRR__c</field>
            <operation>lessThan</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Service_Fees_MRR__c</field>
            <operation>greaterThan</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.VM_Fees__c</field>
            <operation>greaterThan</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.VM_Fees__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.VM_Fees__c</field>
            <operation>lessThan</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Confirmed_Amount__c</field>
            <operation>lessOrEqual</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Forecast_Amount__c</field>
            <operation>lessOrEqual</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Value__c</field>
            <operation>lessOrEqual</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.UNAS_Fees__c</field>
            <operation>greaterThan</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.UNAS_Fees__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.UNAS_Fees__c</field>
            <operation>lessThan</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.RecordTypeId</field>
            <operation>notEqual</operation>
            <value>Cloud Sales,Cloud PS</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Slicehost_Fees__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Slicehost_Fees__c</field>
            <operation>lessThan</operation>
            <value>USD 0</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Slicehost_Fees__c</field>
            <operation>greaterThan</operation>
            <value>USD 0</value>
        </criteriaItems>
        <description>Updated Amount for hosting, mail, and mosso fees, service fees, vm fees</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Updated Customer Field when New Opportunity</fullName>
        <actions>
            <name>Update_Previous_Closed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Custom,Validation Pending,Closed Won</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Previously_Closed__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Updated New Logo on Closed Won</fullName>
        <actions>
            <name>Update_New_Logo_on_Closed_Won</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>updates the new logo commission field when opportunity is closed won for acquisition reps</description>
        <formula>AND(
   OR(ISPICKVAL(StageName, &quot;Closed Won&quot;),
          ISPICKVAL(StageName, &quot;Closed Custom&quot;),
          ISPICKVAL(StageName, &quot;Validation Pending&quot;)),
   CONTAINS(Owner_Role__c, &quot;Acq&quot;),
   Amount &gt;0,
   NOT(CONTAINS(Owner_Role__c, &quot;MVT&quot;)))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Updates Close Date to Original Value</fullName>
        <actions>
            <name>Update_Close_Date_on_Churn_Opp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Confirmed</value>
        </criteriaItems>
        <description>When a Churn opportunity is confirmed sets the close date back to the original date - SFDC automatically updates it to current date because it doesn&apos;t allow closes in the future.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>CloseDatehaspassedpleaseupdate</fullName>
        <assignedToType>owner</assignedToType>
        <description>Your Opportunity Close Date has passed or will pass today and it&apos;s not in a &quot;Confirmed or Avoided&quot; stage.

Please review your opportunities and update these deals. 

Thank you.</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Close Date has passed please update.</subject>
    </tasks>
    <tasks>
        <fullName>SupportRenewalClosedWon</fullName>
        <assignedTo>Business Development Consultant</assignedTo>
        <assignedToType>accountTeam</assignedToType>
        <description>Your AM has closed/won a support renewal. A modification opportunity is required for an upgrade/additional services. 

- Look for the support Renewal Opp on the Account Page
- Check your email for an auto email with your opp details
- Consult the AM</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Support Renewal Closed/Won</subject>
    </tasks>
    <tasks>
        <fullName>UpdateCloseDateonOpportunity</fullName>
        <assignedToType>owner</assignedToType>
        <description>Your Opportunity CLOSE DATE has passed or will pass today and it&apos;s not in a &quot;Closed, Confirmed or Avoided&quot; stage.

Please review your opportunities and update these deals. 

Thank you.</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Update Close Date on Opportunity</subject>
    </tasks>
    <tasks>
        <fullName>x30DayOpportunityNotificationNegotiation</fullName>
        <assignedToType>owner</assignedToType>
        <description>Customer is up for renewal in 60 days. 
* Prepare proposal 
* Seek proposal for deals below &quot;B&quot; grade - opportunity</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Medium</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>30 Day Opportunity Notification (Negotiation)</subject>
    </tasks>
    <tasks>
        <fullName>x30DayOpportunityNotificationNotinNegotiation</fullName>
        <assignedToType>owner</assignedToType>
        <description>Customer is up for renewal in 60 days. 
* Check current grade 
* Review renewal &quot;wish list from MAR&quot; 
* Discuss pending renewal with the customer 
* Review past renewals&apos; 
* Prepare proposal 
* Seek proposal for deals below &quot;B&quot; grade - opp</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Medium</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>30 Day Opportunity Notification (Not in Negotiation)</subject>
    </tasks>
    <tasks>
        <fullName>x30DayOpportunityNotificationProposal</fullName>
        <assignedToType>owner</assignedToType>
        <description>Customer is up for renewal in 60 days. 

*Follow-up with customer</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Medium</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>30 Day Opportunity Notification (Proposal)</subject>
    </tasks>
    <tasks>
        <fullName>x60DayOpportunityNotificationNegotiation</fullName>
        <assignedToType>owner</assignedToType>
        <description>Customer is up for renewal in 30 days. 
* Prepare proposal 
* Seek proposal for deals below &quot;B&quot; grade - opportunity</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Medium</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>60 Day Opportunity Notification (Negotiation)</subject>
    </tasks>
    <tasks>
        <fullName>x60DayOpportunityNotificationNotinNegotiation</fullName>
        <assignedToType>owner</assignedToType>
        <description>Customer is up for renewal in 30 days. 
* Check current grade 
* Review renewal &quot;wish list from MAR&quot; 
* Discuss pending renewal with the customer 
* Review past renewals&apos; 
* Prepare proposal 
* Seek proposal for deals below &quot;B&quot; grade - opp</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Medium</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>60 Day Opportunity Notification (Not in Negotiation)</subject>
    </tasks>
    <tasks>
        <fullName>x60DayOpportunityNotificationProposal</fullName>
        <assignedToType>owner</assignedToType>
        <description>Customer is up for renewal in 30 days. 

*Follow-up with customer</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Medium</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>60 Day Opportunity Notification (Proposal)</subject>
    </tasks>
    <tasks>
        <fullName>x6MonthFollowup</fullName>
        <assignedToType>owner</assignedToType>
        <description>Opportunity was set to &quot;CLOSED/LOST&quot; 6 months ago. Please follow-up with this account to see how they are currently performing.</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Medium</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>6 Month Follow-up</subject>
    </tasks>
</Workflow>
