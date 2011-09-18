<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <tasks>
        <fullName>ServerBuild2DayFollowup</fullName>
        <assignedToType>owner</assignedToType>
        <description>Check net device configuration 
Check fiber</description>
        <dueDateOffset>-2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Server_Build__c.Segment_Configuration__c</offsetFromField>
        <priority>Medium</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Server Build - 2 Day Follow-up</subject>
    </tasks>
    <tasks>
        <fullName>ServerBuild4DayFollowup</fullName>
        <assignedToType>owner</assignedToType>
        <description>Check IP assignment 
Check inventory pulled</description>
        <dueDateOffset>-4</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Server_Build__c.Segment_Configuration__c</offsetFromField>
        <priority>Medium</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Server Build - 4 Day Follow-up</subject>
    </tasks>
</Workflow>
