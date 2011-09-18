<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>PartnerSatisfactionSurvey</fullName>
        <description>Partner Satisfaction Survey</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>EMEA Channel Manager</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>NPS/Partner_Satisfaction_Survey</template>
    </alerts>
    <rules>
        <fullName>Partner Satisfaction Survey Alert</fullName>
        <actions>
            <name>PartnerSatisfactionSurvey</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Partner_Satisfaction_Survey__c.OwnerId</field>
            <operation>equals</operation>
            <value>Anshu Mehta Gautam</value>
        </criteriaItems>
        <description>Email to go to the Account Owner (Channel manager) when a survey result comes in,</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
