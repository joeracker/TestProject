<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>Action Item 1 Task</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Support_Escalation__c.Action_Item_1__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>creates task when an action item is created on a Support Escalation.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Task Assignment for Escalations</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Support_Escalation__c.Status__c</field>
            <operation>equals</operation>
            <value>Pending Customer Response</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
