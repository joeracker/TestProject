<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>NPSAlerttoIntensiveManager</fullName>
        <description>NPS: Alert to Intensive Manager</description>
        <protected>false</protected>
        <recipients>
            <field>Manager_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>NPS/NPS_Neutral_Alertmanager_INT_Only</template>
    </alerts>
    <alerts>
        <fullName>NPSNeutralAlert</fullName>
        <description>NPS: Neutral Alert</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <field>BDC_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>NPS/NPS_Neutral_Alert_INT_Only</template>
    </alerts>
    <alerts>
        <fullName>NPSPositiveAlert</fullName>
        <description>NPS: Positive Alert</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <field>BDC_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>NPS/NPS_Positive_Alert_INT_Only</template>
    </alerts>
    <alerts>
        <fullName>NegativeAlertDissatisfiedCustomerAlert</fullName>
        <ccEmails>netpromoter@lists.rackspace.com</ccEmails>
        <description>Negative Alert: Dissatisfied Customer Alert</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <recipient>Business Development Consultant</recipient>
            <type>accountTeam</type>
        </recipients>
        <recipients>
            <field>BDC_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>Manager_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>NPS/NPS_Negative_Alert</template>
    </alerts>
    <alerts>
        <fullName>Send_email_for_partner_NPS_passive</fullName>
        <description>Send email for partner NPS passive</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>NPS/PassiveEmail_for_Partner_NPS</template>
    </alerts>
    <alerts>
        <fullName>Send_email_for_partner_NPS_promoter</fullName>
        <description>Send email for partner NPS promoter</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>NPS/Promoter_Email_for_Partner_NPS</template>
    </alerts>
    <alerts>
        <fullName>Send_email_for_partner_detractor</fullName>
        <description>Send email for partner detractor</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>NPS/Detractor_Email_for_Partner_NPS</template>
    </alerts>
    <fieldUpdates>
        <fullName>Update_Ticket_Creation_Status_to_Created</fullName>
        <description>Updates the Ticket Creation Status to let them know it has been created.</description>
        <field>Ticket_Creation_Status__c</field>
        <formula>&quot;The Ticket has been created.  Please see the ticket number field.&quot;</formula>
        <name>Update Ticket Creation Status to Created</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Alert to Intensive EMEA Managers</fullName>
        <actions>
            <name>NPSAlerttoIntensiveManager</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>NPS_Survey__c.Overall_Recommendation__c</field>
            <operation>greaterThan</operation>
            <value>6</value>
        </criteriaItems>
        <criteriaItems>
            <field>NPS_Survey__c.Owner_Role__c</field>
            <operation>contains</operation>
            <value>Int1,Int2,Int3,Int4,Int5</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>NPS%3A Negative Alert</fullName>
        <actions>
            <name>NPSNegativeAlertTask</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>NegativeAlertDissatisfiedCustomerAlert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>NPS_Survey__c.Overall_Recommendation__c</field>
            <operation>lessOrEqual</operation>
            <value>6</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.Email</field>
            <operation>notContain</operation>
            <value>co.uk</value>
        </criteriaItems>
        <description>Dissatisfied Customer Alert Task</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>NPS%3A Neutral Alert - 7</fullName>
        <actions>
            <name>NeutralCustomerAlert</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>NPSNeutralAlert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3</booleanFilter>
        <criteriaItems>
            <field>NPS_Survey__c.Overall_Recommendation__c</field>
            <operation>equals</operation>
            <value>7</value>
        </criteriaItems>
        <criteriaItems>
            <field>NPS_Survey__c.Owner_Role__c</field>
            <operation>contains</operation>
            <value>INT - AM,RES</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.Email</field>
            <operation>notContain</operation>
            <value>.co.uk</value>
        </criteriaItems>
        <description>Neutral Customer Alert Task</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>NPS%3A Neutral Alert - 8</fullName>
        <actions>
            <name>NeutralCustomerAlert</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>NPSNeutralAlert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND 2 AND 3</booleanFilter>
        <criteriaItems>
            <field>NPS_Survey__c.Overall_Recommendation__c</field>
            <operation>equals</operation>
            <value>8</value>
        </criteriaItems>
        <criteriaItems>
            <field>NPS_Survey__c.Owner_Role__c</field>
            <operation>contains</operation>
            <value>INT - AM,RES</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.Email</field>
            <operation>notContain</operation>
            <value>co.uk</value>
        </criteriaItems>
        <description>Neutral Customer Alert Task</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>NPS%3A Partner Detractor</fullName>
        <actions>
            <name>Partner_Detractor_Follow_Up</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>Send_email_for_partner_detractor</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>NPS_Survey__c.Overall_Recommendation__c</field>
            <operation>lessOrEqual</operation>
            <value>6</value>
        </criteriaItems>
        <criteriaItems>
            <field>NPS_Survey__c.BDC_Email__c</field>
            <operation>notContain</operation>
            <value>.co.uk</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.Email</field>
            <operation>notContain</operation>
            <value>.co.uk</value>
        </criteriaItems>
        <description>sends and email to sales rep and channel manager for detractor NPS result and creates a task for sales rep</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>NPS%3A Partner Passive</fullName>
        <actions>
            <name>Partner_Passive_Follow_Up</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>Send_email_for_partner_NPS_passive</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>NPS_Survey__c.Overall_Recommendation__c</field>
            <operation>greaterOrEqual</operation>
            <value>7</value>
        </criteriaItems>
        <criteriaItems>
            <field>NPS_Survey__c.Overall_Recommendation__c</field>
            <operation>lessOrEqual</operation>
            <value>9</value>
        </criteriaItems>
        <criteriaItems>
            <field>NPS_Survey__c.BDC_Email__c</field>
            <operation>notContain</operation>
            <value>.co.uk</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.Email</field>
            <operation>notContain</operation>
            <value>.co.uk</value>
        </criteriaItems>
        <description>sends and email to sales rep and channel manager for passive NPS result and creates task for sales rep</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>NPS%3A Partner Promoter</fullName>
        <actions>
            <name>Send_email_for_partner_NPS_promoter</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>NPS_Survey__c.Overall_Recommendation__c</field>
            <operation>equals</operation>
            <value>10</value>
        </criteriaItems>
        <criteriaItems>
            <field>NPS_Survey__c.BDC_Email__c</field>
            <operation>notContain</operation>
            <value>.co.uk</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.Email</field>
            <operation>notContain</operation>
            <value>.co.uk</value>
        </criteriaItems>
        <description>sends and email to sales rep and channel manager for promoterNPS result and creates task for sales rep</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>NPS%3A Positive Alert - 10</fullName>
        <actions>
            <name>NPSPositiveCustomerAlert</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>NPSPositiveAlert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>NPS_Survey__c.Overall_Recommendation__c</field>
            <operation>equals</operation>
            <value>10</value>
        </criteriaItems>
        <criteriaItems>
            <field>NPS_Survey__c.Owner_Role__c</field>
            <operation>contains</operation>
            <value>INT - AM,RES</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.Email</field>
            <operation>notContain</operation>
            <value>co.uk</value>
        </criteriaItems>
        <description>Positive Customer Alert</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>NPS%3A Positive Alert - 9</fullName>
        <actions>
            <name>NPSPositiveCustomerAlert</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>NPSPositiveAlert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>NPS_Survey__c.Overall_Recommendation__c</field>
            <operation>equals</operation>
            <value>9</value>
        </criteriaItems>
        <criteriaItems>
            <field>NPS_Survey__c.Owner_Role__c</field>
            <operation>contains</operation>
            <value>INT - AM,RES</value>
        </criteriaItems>
        <criteriaItems>
            <field>User.Email</field>
            <operation>notContain</operation>
            <value>co.uk</value>
        </criteriaItems>
        <description>Positive Customer Alert</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Ticket Creation status to Created</fullName>
        <actions>
            <name>Update_Ticket_Creation_Status_to_Created</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>NPS_Survey__c.Ticket_Created__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>NPS_Survey__c.Ticket_Number__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updates the ticket creation status to Ticket has been created.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>NPSNegativeAlertTask</fullName>
        <assignedToType>owner</assignedToType>
        <description>You have received this email because your customer has submitted a Net Promoter Survey with a Likelihood to Recommend score of 6 or below.</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Immediate</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>NPS Negative Alert Task</subject>
    </tasks>
    <tasks>
        <fullName>NPSPositiveCustomerAlert</fullName>
        <assignedToType>owner</assignedToType>
        <description>You have received this email because your customer has submitted a Net Promoter Survey with a Likelihood to Recommend score of 9 or 10.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Medium</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>NPS: Positive Customer Alert</subject>
    </tasks>
    <tasks>
        <fullName>NeutralCustomerAlert</fullName>
        <assignedToType>owner</assignedToType>
        <description>You have received this email because your customer has submitted a Net Promoter Survey with a Likelihood to Recommend score of 7 or 8.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Medium</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Neutral Customer Alert</subject>
    </tasks>
    <tasks>
        <fullName>Partner_Detractor_Follow_Up</fullName>
        <assignedToType>owner</assignedToType>
        <description>Used to send task to partner sales rep for follow up on a detractor</description>
        <dueDateOffset>2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>NPS_Survey__c.CreatedDate</offsetFromField>
        <priority>High</priority>
        <protected>false</protected>
        <status>New</status>
        <subject>Partner Detractor Follow Up</subject>
    </tasks>
    <tasks>
        <fullName>Partner_Passive_Follow_Up</fullName>
        <assignedToType>owner</assignedToType>
        <description>Used to send task to partner sales rep for follow up on a passive</description>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>NPS_Survey__c.CreatedDate</offsetFromField>
        <priority>High</priority>
        <protected>false</protected>
        <status>New</status>
        <subject>Partner Passive Follow Up</subject>
    </tasks>
</Workflow>
