<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>ClaimApproved</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Claim Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ClaimnotApproved</fullName>
        <field>Status__c</field>
        <literalValue>Not Approved</literalValue>
        <name>Claim not Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DateApproved</fullName>
        <field>Date_Approved__c</field>
        <formula>today()</formula>
        <name>Date Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
