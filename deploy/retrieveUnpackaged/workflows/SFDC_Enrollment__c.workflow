<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>EmailtoPartnerthatEventRegistrationhasbeenapproved</fullName>
        <description>Email to Partner that Event Registration has been approved.</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventRegistration/PartnerEventRegistrationApproved</template>
    </alerts>
    <alerts>
        <fullName>EmailtoPartnerthatEventRegistrationnotApproved</fullName>
        <description>Email to Partner that Event Registration not Approved.</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>EventRegistration/PartnerEventRegistrationnotApproved</template>
    </alerts>
    <alerts>
        <fullName>TrainingNewRegistration</fullName>
        <description>Training - New Registration</description>
        <protected>false</protected>
        <recipients>
            <recipient>dani.garcia@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>david.franklin@rackspace.com.core</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Support/TrainingNewRegistrationRequest</template>
    </alerts>
    <fieldUpdates>
        <fullName>RegistrationApproved</fullName>
        <field>Status__c</field>
        <literalValue>Registered</literalValue>
        <name>Registration Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RegistrationApprovedRegistered</fullName>
        <field>Status__c</field>
        <literalValue>Registered</literalValue>
        <name>Registration Approved - Registered</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>RegistrationNotApproved</fullName>
        <field>Status__c</field>
        <literalValue>Not Registered</literalValue>
        <name>Registration - Not Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>New Registration Request</fullName>
        <actions>
            <name>TrainingNewRegistration</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>SFDC_Enrollment__c.Status__c</field>
            <operation>equals</operation>
            <value>New,Not Registered</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
