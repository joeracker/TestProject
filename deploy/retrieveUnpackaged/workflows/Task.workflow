<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Subject_of_SE_Qualification</fullName>
        <description>Update the subject of the SE Qualification Questionnaire to &apos;SE Qualification – Acquisition/Emerging&apos;</description>
        <field>Subject</field>
        <formula>&quot;SE Qualification – Acquisition/Emerging&quot;</formula>
        <name>Update Subject of SE Qualification</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Rename SE Qualification - Acquisition</fullName>
        <actions>
            <name>Update_Subject_of_SE_Qualification</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Task.RecordTypeId</field>
            <operation>equals</operation>
            <value>Qualification-Acquisition/Emerging</value>
        </criteriaItems>
        <description>Update the subject of the SE Qualifications to the actual subject: SE Qualification – Acquisition</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
