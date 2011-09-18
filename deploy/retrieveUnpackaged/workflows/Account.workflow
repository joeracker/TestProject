<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>AlerttogottotheAMforapassivescore</fullName>
        <description>Alert to got to the AM for a passive score</description>
        <protected>false</protected>
        <recipients>
            <recipient>Account Manager</recipient>
            <type>accountTeam</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>NPS/ALERTEMEAPassive_for_NPS</template>
    </alerts>
    <alerts>
        <fullName>Email_to_UK_AM_managed_Team_Leads</fullName>
        <ccEmails>donna.edwards@rackspace.co.uk</ccEmails>
        <ccEmails>kapil.sharma@rackspace.co.uk</ccEmails>
        <ccEmails>anna.hector@rackspace.co.uk</ccEmails>
        <ccEmails>joseph.dockrey@rackspace.co.uk</ccEmails>
        <ccEmails>sean.lawlor@rackspace.co.uk</ccEmails>
        <description>Email to UK AM managed Team Leads</description>
        <protected>false</protected>
        <recipients>
            <recipient>clarissa.gent@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>meera.singh@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>michelle.planthaber@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>parvina.dean@rackspace.co.uk.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>Support/New_Customer_Cotification_UK</template>
    </alerts>
    <fieldUpdates>
        <fullName>SetAccounttoReadOnly</fullName>
        <field>RecordTypeId</field>
        <lookupValue>ReadOnly</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Set Account to Read Only</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_LDT_Nurture_on_Account</fullName>
        <description>Used to set the picture on the account when an opportunity is sent to nurture</description>
        <field>LDT_Nurture__c</field>
        <literalValue>1</literalValue>
        <name>Update LDT Nurture on Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Partner_Account_Type_to_Former</fullName>
        <description>Updates the account type to former partner when a deactivated date is enetered in</description>
        <field>Type</field>
        <literalValue>Former Partner</literalValue>
        <name>Update Partner Account Type to Former</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Partner_Active_to_False</fullName>
        <description>Updates the partner active flag to false when a deactivated date is entered</description>
        <field>Partner_Active__c</field>
        <literalValue>0</literalValue>
        <name>Update Partner Active to False</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Email Alert to UK Managed Leads when a new Customer comes on board</fullName>
        <actions>
            <name>Email_to_UK_AM_managed_Team_Leads</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Customer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Support_Office__c</field>
            <operation>equals</operation>
            <value>Benelux,UK</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Support_Segment__c</field>
            <operation>equals</operation>
            <value>Managed</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Read Only Accounts</fullName>
        <actions>
            <name>SetAccounttoReadOnly</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Account.AUP_Reject__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Former Customer</value>
        </criteriaItems>
        <description>Work flow that changes Accounts to Read only when the AUP Reject flag is set to true or the &quot;Type&quot; is set to &quot;Former Customer&quot;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send Email 1 for Partner Communication</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.Type</field>
            <operation>equals</operation>
            <value>Partner</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Partner_Active__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>sends email 1 after the active flag is checked on the account.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Send email and assign task to the AM</fullName>
        <actions>
            <name>Acustomerhasgivenyouapassivescore</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>AlerttogottotheAMforapassivescore</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Latest_Recommendation__c</field>
            <operation>equals</operation>
            <value>7,8</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Support_Office__c</field>
            <operation>notEqual</operation>
            <value>Benelux,UK</value>
        </criteriaItems>
        <description>AM to follow up with a customer for each Passive (7-8) score. When a passive score is received, this workflow is triggered.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Partner Account Type and Active Flag</fullName>
        <actions>
            <name>Update_Partner_Account_Type_to_Former</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Partner_Active_to_False</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Partner_Deactivated_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updates the account type for partners to former customer and active flag to false when a deactivated date is entered</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Acustomerhasgivenyouapassivescore</fullName>
        <assignedTo>Account Manager</assignedTo>
        <assignedToType>accountTeam</assignedToType>
        <dueDateOffset>5</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>A customer has given you a passive score</subject>
    </tasks>
</Workflow>
