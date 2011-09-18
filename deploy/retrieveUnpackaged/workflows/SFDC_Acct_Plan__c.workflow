<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Strategy_Workshop</fullName>
        <description>Strategy Workshop</description>
        <protected>false</protected>
        <recipients>
            <recipient>ccasseb@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>lisa.larson@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Sales/Workshop_Notification</template>
    </alerts>
    <rules>
        <fullName>New Workshop Notification</fullName>
        <actions>
            <name>Strategy_Workshop</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SFDC_Acct_Plan__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Workshop</value>
        </criteriaItems>
        <description>Notify Lisa Larson and Casey Casseb when a new workshop has been submitted.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
