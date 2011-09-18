<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>SendsemailnotificationonCPPrecordcreation</fullName>
        <description>Sends email notification on CPP record creation</description>
        <protected>false</protected>
        <recipients>
            <recipient>tbuchhol@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Churn_PP/Email_Notification_on_new_record</template>
    </alerts>
    <fieldUpdates>
        <fullName>CPPApprovalRejected</fullName>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>CPP Approval Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CPPApproved</fullName>
        <field>CPP_Approved__c</field>
        <literalValue>1</literalValue>
        <name>CPP Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CPPStatustoApproved</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>CPP Status to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetsStatustoPendingApproval</fullName>
        <field>Status__c</field>
        <literalValue>Pending Approval</literalValue>
        <name>Sets Status to Pending Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateResultswhenpopulated</fullName>
        <description>checks the results box when the resolution (prevention results) is populated.</description>
        <field>Results__c</field>
        <literalValue>1</literalValue>
        <name>Update Results when populated</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>CPP AR AM Response Updated</fullName>
        <active>false</active>
        <description>When the AR AM Response is updated send a notification to AR.</description>
        <formula>ISCHANGED(AR_AM_Response__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CPP AR Response Updated</fullName>
        <active>false</active>
        <description>When the AR Response is updated send a notification to AM.</description>
        <formula>ISCHANGED(ARResponse__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CPP Cloud AM Response Updated</fullName>
        <active>false</active>
        <description>When the Cloud AM Response is updated send a notification to Cloud</description>
        <formula>ISCHANGED(Cloud_AM_Response__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CPP Cloud Response Updated</fullName>
        <active>false</active>
        <description>When the Cloud Response is updated send a notification to AM.</description>
        <formula>ISCHANGED(Cloud_Response__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CPP Finance AM Response Updated</fullName>
        <active>false</active>
        <description>When the Finance AM Response is updated send a notification to Finance.</description>
        <formula>ISCHANGED(Finance_AM_Response__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CPP Finance Response Updated</fullName>
        <active>false</active>
        <description>When the Finance AM Response is updated send a notification to Finance.</description>
        <formula>ISCHANGED(Finance_Response__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CPP Notification - Cloud</fullName>
        <active>false</active>
        <criteriaItems>
            <field>ChurnPreventionPlan__c.CLOUD__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>ChurnPreventionPlan__c.Status__c</field>
            <operation>equals</operation>
            <value>Open</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CPP Notification - Finance</fullName>
        <active>false</active>
        <criteriaItems>
            <field>ChurnPreventionPlan__c.FINANCE__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>ChurnPreventionPlan__c.Status__c</field>
            <operation>equals</operation>
            <value>Open</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CPP Notification - Platform</fullName>
        <active>false</active>
        <criteriaItems>
            <field>ChurnPreventionPlan__c.PLATFORM__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>ChurnPreventionPlan__c.Status__c</field>
            <operation>equals</operation>
            <value>Open</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CPP Platform AM Response Updated</fullName>
        <active>false</active>
        <description>When the Platform AM Response is updated send a notification to Platform.</description>
        <formula>ISCHANGED(Platform_AM_Response__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CPP Platform Response Updated</fullName>
        <active>false</active>
        <description>When the Platform Response is updated send a notification to AM.</description>
        <formula>ISCHANGED(Platform_Response__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CPP Response - CLOUD</fullName>
        <active>false</active>
        <criteriaItems>
            <field>ChurnPreventionPlan__c.CLOUD__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>ChurnPreventionPlan__c.Status__c</field>
            <operation>equals</operation>
            <value>Open</value>
        </criteriaItems>
        <criteriaItems>
            <field>ChurnPreventionPlan__c.Cloud_Response__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Response back from CLOUD on CPP.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CPP Response - Finance</fullName>
        <active>false</active>
        <criteriaItems>
            <field>ChurnPreventionPlan__c.FINANCE__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>ChurnPreventionPlan__c.Status__c</field>
            <operation>equals</operation>
            <value>Open</value>
        </criteriaItems>
        <criteriaItems>
            <field>ChurnPreventionPlan__c.Finance_Response__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Response back from Finance on CPP.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CPP Response - Platform</fullName>
        <active>false</active>
        <criteriaItems>
            <field>ChurnPreventionPlan__c.PLATFORM__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>ChurnPreventionPlan__c.Status__c</field>
            <operation>equals</operation>
            <value>Open</value>
        </criteriaItems>
        <criteriaItems>
            <field>ChurnPreventionPlan__c.Platform_Response__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Response back from Platform on CPP.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Check CPP Results when populated</fullName>
        <actions>
            <name>UpdateResultswhenpopulated</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>checks the CPP results checkbox when the resolution field is populated</description>
        <formula>OR(NOT(ISNULL(Prevention_Results__c)), LEN(Prevention_Results__c) &gt;1)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email Alert on New CPP Record</fullName>
        <actions>
            <name>SendsemailnotificationonCPPrecordcreation</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>ChurnPreventionPlan__c.Status__c</field>
            <operation>equals</operation>
            <value>Open</value>
        </criteriaItems>
        <description>Sends an email alert when a CPP record is created.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
