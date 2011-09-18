<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>PhasedEmailtoOPV</fullName>
        <description>Phased Email to OPV</description>
        <protected>false</protected>
        <recipients>
            <recipient>US OPV</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>tbuchhol@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ApprovalProcessTemplates/OPVEmailforPhased</template>
    </alerts>
    <rules>
        <fullName>Start Date</fullName>
        <active>true</active>
        <description>Workflow will send an email to OPV when the start date of a phased/</description>
        <formula>AND(NOT(ISNULL( Start_Date__c )),  NOT(Project__c ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>PhasedEmailtoOPV</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Phased_Delayed_Deployments__c.Start_Date__c</offsetFromField>
            <timeLength>-5</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
