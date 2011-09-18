<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>NotificationofCompletedCoachingLog</fullName>
        <description>Notification of Completed Coaching Log</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <field>Manager__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/NotificationofCompletedCoachingLog</template>
    </alerts>
    <fieldUpdates>
        <fullName>UpdatesCompletedDate</fullName>
        <description>Updates the Completed Date to today</description>
        <field>Completed_Date__c</field>
        <formula>Today()</formula>
        <name>Updates Completed Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Set Completed Date</fullName>
        <actions>
            <name>NotificationofCompletedCoachingLog</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>UpdatesCompletedDate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Coaching_Log__c.Status__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>Coaching_Log__c.Completed_Date__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>sets the completed date when the status = completed</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
