<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>ImpCallCompleted</fullName>
        <description>Imp Call Completed</description>
        <protected>false</protected>
        <recipients>
            <recipient>Account Coordinator</recipient>
            <type>accountTeam</type>
        </recipients>
        <recipients>
            <recipient>Account Manager</recipient>
            <type>accountTeam</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Support/SupportImplementationCallDate</template>
    </alerts>
    <alerts>
        <fullName>WarmHandOffCompleted</fullName>
        <description>Warm Hand-Off Completed</description>
        <protected>false</protected>
        <recipients>
            <recipient>Account Coordinator</recipient>
            <type>accountTeam</type>
        </recipients>
        <recipients>
            <recipient>Account Manager</recipient>
            <type>accountTeam</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Support/SupportImplementationCallDate</template>
    </alerts>
    <tasks>
        <fullName>CreateEventforforImpCallwithCustomer</fullName>
        <assignedToType>owner</assignedToType>
        <description>Create event and send outlook invite to customer with Implementation Agenda/Imp doc.</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Medium</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Create Event for for Imp Call with Customer</subject>
    </tasks>
    <tasks>
        <fullName>SendCustomerRackspacecontactinformation</fullName>
        <assignedToType>owner</assignedToType>
        <description>This task is being generated for the AM to send the customer Rackspace contact information (SAS70).</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Medium</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Send Customer Rackspace contact information</subject>
    </tasks>
</Workflow>
