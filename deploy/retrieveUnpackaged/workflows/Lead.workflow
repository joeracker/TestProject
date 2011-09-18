<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>EMEA_Only_EMail_to_EMEA_Cloud_Online_Queue</fullName>
        <description>EMEA Only EMail to EMEA Cloud Online Queue</description>
        <protected>false</protected>
        <recipients>
            <recipient>EMEA Cloud Customer Care</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>EMEA Cloud Customer Care Manager</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>EMEA Cloud Overlay</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>EMEA Cloud Product Specialists Manager</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>EMEA Mailtrust</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>EMEA Online Cloud</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>EMEA Online Sales Manager - Cloud</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>benedict.glynn@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ShareAll/EMEA_Online_CLoud_Order</template>
    </alerts>
    <alerts>
        <fullName>EmailAlerttoIncreaseforIoDCRMSubmissions</fullName>
        <ccEmails>channel@increasecrm.co.uk</ccEmails>
        <description>Email Alert to Increase for IoD CRM Submissions</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>Leads/IoDLeadNotificationInternal</template>
    </alerts>
    <alerts>
        <fullName>Emailnotificationtopartnerthatleadhasbeenapproved</fullName>
        <description>Email notification to partner that lead has been approved</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Leads/PartnerLeadApproved</template>
    </alerts>
    <alerts>
        <fullName>Emailtopartnerthattheleadhasnotbeenapproved</fullName>
        <description>Email to partner that the lead has not been approved.</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Leads/PartnerLeadnotApproved</template>
    </alerts>
    <alerts>
        <fullName>Emailwhenleadisconverted</fullName>
        <description>Email when lead is converted</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/EmailwhenLeadisConverted</template>
    </alerts>
    <alerts>
        <fullName>PRM_Convert_Lead_Email_Notification</fullName>
        <description>PRM Convert Lead Email Notification</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Leads/PRM_Converted_Lead_Template</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_to_CM_and_Lead_Owner_partner_submits_lead_via_portal</fullName>
        <description>Send Email Lead Owner partner submits lead via portal</description>
        <protected>false</protected>
        <recipients>
            <recipient>andy.cagle@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>jody.rodriguez@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>kathleen.hartman@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>lynn.capitano@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>ryan.scott@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>will.ruizdecastilla@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <field>Sales_Rep__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>Leads/Partner_Referral_CM_Lead_Owner_Notification</template>
    </alerts>
    <alerts>
        <fullName>Send_email_for_Sparkhound_lead_submission</fullName>
        <ccEmails>kris.kubelka@sparkhound.com</ccEmails>
        <ccEmails>Jeanese.latiolais@sparkhound.com</ccEmails>
        <ccEmails>Javier.barrera@rackspace.com</ccEmails>
        <ccEmails>melissa.newman@sparkhound.com</ccEmails>
        <ccEmails>john.denman@rackspace.com</ccEmails>
        <description>Send email for Sparkhound lead submission</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>Leads/SparkhoundLeadSubmission</template>
    </alerts>
    <alerts>
        <fullName>Send_email_to_Account_Owner_if_Lead_has_been_created</fullName>
        <description>Send email to Account Owner if Lead has been created</description>
        <protected>false</protected>
        <recipients>
            <field>Channel_Manager_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Leads/Partner_PRM_Lead_Owner_Notification</template>
    </alerts>
    <alerts>
        <fullName>Send_email_to_Ingram_Micro_rep</fullName>
        <ccEmails>Heather.Jones@ingrammicro.com</ccEmails>
        <description>Send email to Ingram Micro rep</description>
        <protected>false</protected>
        <recipients>
            <recipient>chris.rallo@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>steve.simpson@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Leads/NewIngramMicroApplicationExternal</template>
    </alerts>
    <alerts>
        <fullName>Send_email_to_owner_for_partner_online_order</fullName>
        <ccEmails>microsites@rackspace.com</ccEmails>
        <description>Send email to owner for partner online order</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <field>Sales_Rep__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Leads/PartnerOnlineOrder_Lead_Owner_Notification</template>
    </alerts>
    <fieldUpdates>
        <fullName>ApprovedDealRegistration</fullName>
        <field>Status</field>
        <literalValue>Approved</literalValue>
        <name>Approved Deal Registration</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ApprovedLead</fullName>
        <field>Status</field>
        <literalValue>Qualified</literalValue>
        <name>Approved Lead</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DealRegistrationApproved</fullName>
        <field>Status</field>
        <literalValue>Approved</literalValue>
        <name>Deal Registration Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DealRegistrationRejected</fullName>
        <field>Status</field>
        <literalValue>Not Approved</literalValue>
        <name>Deal Registration Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DealRegistrationSubmitted</fullName>
        <field>Status</field>
        <literalValue>Pending Approval</literalValue>
        <name>Deal Registration Submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Default_Lead_Origination</fullName>
        <description>If a lead is created via the partner portal, default the Lead Origination field to &quot;Partner Portal&quot;</description>
        <field>Lead_Origination__c</field>
        <literalValue>Partner Portal</literalValue>
        <name>Default Lead Origination</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LeadNotApproved</fullName>
        <field>Status</field>
        <literalValue>Unqualified</literalValue>
        <name>Lead Not Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RejectedDealRegistration</fullName>
        <field>Status</field>
        <literalValue>Not Approved</literalValue>
        <name>Rejected Deal Registration</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateEmailShadowField</fullName>
        <field>Email_Shadow_for_Survey__c</field>
        <formula>Email</formula>
        <name>Update Email Shadow Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateIoDNumberShadow</fullName>
        <description>Used to update the IoD Member Number Shadow field from the IoD Member Number so that it can be transferred to the Account.</description>
        <field>IoD_Number_Shadow__c</field>
        <formula>IoD_Member_Number__c</formula>
        <name>Update IoD Number Shadow</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateTerritoryShadow</fullName>
        <description>Updates the Territory Shadow field so that it has the same value as the Territory field</description>
        <field>Territory_Shadow__c</field>
        <formula>CASE(Territory__c, 
&quot;US/CANADA&quot;, &quot;US/CANADA&quot;, 
&quot;EMEA&quot;,&quot;EMEA&quot;,
&quot;Northeast&quot;,&quot;Northeast&quot;,
&quot;Northwest&quot;,&quot;Northwest&quot;,
&quot;Midatlantic&quot;,&quot;Midatlantic&quot;,
&quot;Southwest&quot;,&quot;Southwest&quot;,
&quot;Southeast&quot;,&quot;Southeast&quot;,
&quot;Midwest&quot;,&quot;Midwest&quot;,
&quot;Canada&quot;,&quot;Canada&quot;,
&quot;South/Central America&quot;,&quot;South/Central America&quot;,
&quot;ROW&quot;,&quot;ROW&quot;,
&quot;Nordic&quot;,&quot;Nordic&quot;,
&quot;Benelux&quot;,&quot;Benelux&quot;,
&quot;DACH&quot;,&quot;DACH&quot;,
&quot;&quot;
)</formula>
        <name>Update Territory Shadow</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_DDI_for_Cloud_Survey</fullName>
        <field>Initial_DDI__c</field>
        <formula>Order_Number__c</formula>
        <name>Update DDI # for Cloud Survey</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Generator_URL_for_Created_By</fullName>
        <description>updates the generator url based on the created by person from user record</description>
        <field>Generator_URL__c</field>
        <formula>CreatedBy.Generator_URL__c</formula>
        <name>Update Generator URL for Created By</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Partner_Lead_Source</fullName>
        <field>LeadSource</field>
        <literalValue>Referral</literalValue>
        <name>Update Partner Lead Source</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Partner_Referral_Type</fullName>
        <field>Referral_Type__c</field>
        <literalValue>Partner Referral</literalValue>
        <name>Update Partner Referral Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Add Partner Account from Referrer</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Referral_Type__c</field>
            <operation>equals</operation>
            <value>Partner Referral</value>
        </criteriaItems>
        <description>Inserts the partner account from the referrer field</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Alert%3A CRM IoD Lead Submission</fullName>
        <actions>
            <name>EmailAlerttoIncreaseforIoDCRMSubmissions</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.CRM_IoD__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Sends an email to Increase when an IoD CRM lead is submitted.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Default Lead Origination to Partner Portal</fullName>
        <actions>
            <name>Default_Lead_Origination</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.RecordTypeId</field>
            <operation>equals</operation>
            <value>Partner Lead</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>notEqual</operation>
            <value>Partner PRM</value>
        </criteriaItems>
        <description>If a lead is created via the partner portal, default Lead Origination field to &quot;Partner Portal&quot;</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Email the Cloud Online Queue members</fullName>
        <actions>
            <name>EMEA_Only_EMail_to_EMEA_Cloud_Online_Queue</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.RecordTypeId</field>
            <operation>equals</operation>
            <value>EMEA Online Order Lead</value>
        </criteriaItems>
        <description>Email to the EMEA Cloud Online Queue Members when a new lead is submitted</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>PRM Convert Lead Email Notification</fullName>
        <actions>
            <name>PRM_Convert_Lead_Email_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Qualified</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.IsConverted</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.RecordTypeId</field>
            <operation>equals</operation>
            <value>Partner Lead</value>
        </criteriaItems>
        <description>Notifies the Partner User that their lead has been converted.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Partner Lead Source Update</fullName>
        <actions>
            <name>Update_Partner_Lead_Source</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Partner_Referral_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.RecordTypeId</field>
            <operation>equals</operation>
            <value>Partner Lead</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Send Email for Sparkhound Lead Submission</fullName>
        <actions>
            <name>Send_email_for_Sparkhound_lead_submission</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Campaign_Interest__c</field>
            <operation>equals</operation>
            <value>Sparkhound Sharepoint</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.RecordTypeId</field>
            <operation>equals</operation>
            <value>Partner Lead</value>
        </criteriaItems>
        <description>sends email to people when sparkhound sharepoint lead is submitted</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Send email to Ingram Micro Rep</fullName>
        <actions>
            <name>Send_email_to_Ingram_Micro_rep</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.RecordTypeId</field>
            <operation>equals</operation>
            <value>Ingram Micro Partner Application</value>
        </criteriaItems>
        <description>sends an email to the Ingram Micro rep when a partner application is created</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Send email to Partner Account Owner when partner  lead is created</fullName>
        <actions>
            <name>Send_email_to_Account_Owner_if_Lead_has_been_created</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.RecordTypeId</field>
            <operation>equals</operation>
            <value>Partner Lead</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>startsWith</operation>
            <value>Partner PRM</value>
        </criteriaItems>
        <description>Sends an email to partner account owner when a partner prm lead is submitted via the partner portal.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Send email to owner when partner online order is created</fullName>
        <actions>
            <name>Send_email_to_owner_for_partner_online_order</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.RecordTypeId</field>
            <operation>equals</operation>
            <value>Partner Online Order Lead</value>
        </criteriaItems>
        <description>Sends an email to the lead owner when a partner online order is submitted via the microsite.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Send email to owner when partner referral lead is created</fullName>
        <actions>
            <name>Send_Email_to_CM_and_Lead_Owner_partner_submits_lead_via_portal</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.RecordTypeId</field>
            <operation>equals</operation>
            <value>Partner Lead</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Landing_Page__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Campaign_Interest__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Sends an email to the lead owner when a partner referral lead is submitted via the partner portal.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Sync IoD Number</fullName>
        <actions>
            <name>UpdateIoDNumberShadow</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Used to keep the IoD Member Number and the IoD Number Shadow synced.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Sync Territory Fields</fullName>
        <actions>
            <name>UpdateTerritoryShadow</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>is triggered everytime a lead is updated so that the Territory and Territory Shadow Fields Are in Sync</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update DDI for Survey</fullName>
        <actions>
            <name>Update_DDI_for_Cloud_Survey</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Order_Number__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This workflow is used to update the DDI for survey field which gets mapped on the account .</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Shadow Email Field</fullName>
        <actions>
            <name>UpdateEmailShadowField</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1</booleanFilter>
        <criteriaItems>
            <field>Lead.Email</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Update the Shadow Email Field in the Lead Record to be passed into the opportunity.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Updated Generator URL with Created By</fullName>
        <actions>
            <name>Update_Generator_URL_for_Created_By</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.RecordTypeId</field>
            <operation>equals</operation>
            <value>Cloud Rep Lead</value>
        </criteriaItems>
        <description>updates the Generator URL based on the field from user table for created by person.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
