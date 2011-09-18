<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>ContractPreRenewalNotification90days</fullName>
        <description>Contract Pre-Renewal Notification (90 days)</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Support/SupportContractRenewalNotification</template>
    </alerts>
    <fieldUpdates>
        <fullName>ContractStatusUpdate</fullName>
        <description>Update the contract status from Active to Pending Renewal at 90 days.</description>
        <field>Status</field>
        <literalValue>Pending Renewal</literalValue>
        <name>Contract Status Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <tasks>
        <fullName>x90DayNotification</fullName>
        <assignedToType>accountOwner</assignedToType>
        <description>* Open a RENEWAL OPPORTUNITY 
* Check current grade 
* Review renewal &quot;wish list&quot; from MAR/Pulse Check
* Discuss pending renewal with the customer 
* Review past renewals</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Medium</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>90 Day Notification</subject>
    </tasks>
</Workflow>
