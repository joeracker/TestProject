<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>Updated Opportunity Stage to Qualify</fullName>
        <active>false</active>
        <criteriaItems>
            <field>LDT_Follow_Up__c.Status__c</field>
            <operation>equals</operation>
            <value>Sent to Sales Rep</value>
        </criteriaItems>
        <description>updates the opportunity stage to qualify when the LDT Follow Up status is saved as sent to sales rep</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
