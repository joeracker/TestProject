<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>FundApprovalDate</fullName>
        <field>Date_Approved__c</field>
        <formula>today()</formula>
        <name>Fund Approval Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>FundRequestApproved</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Fund Request Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>FundRequestApproved_d_2</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Fund Request - Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>FundnotApproved</fullName>
        <field>Status__c</field>
        <literalValue>Not Approved</literalValue>
        <name>Fund not Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
