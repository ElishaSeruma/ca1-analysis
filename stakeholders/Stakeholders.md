# Stakeholders
Stakeholder catalogue

| ID | Stakeholder | Type | Goal | Concern / evidence | Influence |
|---|---|---|---|---|---|
| SH01 | Coordinator | Direct | Make sound matches and allocations; see exceptions | "A vacancy is not a match unless all of the important requirements are satisfied." | High |
| SH02 | Administrator | Direct | Keep records complete; free up stalled capacity | "Provisional arrangements can block capacity long after the original request has stalled." | Medium |
| SH03 | Service user / participant | Direct | Know where their request stands and what it waits on | "I need to know whether I am waiting for information, a decision or an outside organisation." | Medium |
| SH04 | Mentor | Direct | Receive suitable matches; declare conflicts and availability | Scenario: matching considers "experience, conflicts of interest, location, availability" | Medium |
| SH05 | Facilitator | Direct | Know event bookings and requirements | Scenario: events have "facilitator constraints" | Low |
| SH06 | Reviewer | Direct | Add new evidence without losing the earlier basis | "New information should be added without erasing the basis of the earlier decision." | Medium |
| SH07 | Manager | Indirect | Consistent outcome reasons; reporting | "We need consistent reasons for delay, withdrawal and incomplete outcomes." | High |
| SH08 | Partner representative | External | Only the information their role needs | "I need the information required for my role, not the complete case history." | Medium |
| SH09 | Funder | External (offstage) | Summary outcomes without personal data | Scenario: "Summary reporting for management and funders" | High (funding) |
| SH10 | Representative / assistant acting for a participant | External | Act on the participant's behalf | Scenario: "Another person or organisation may assist with a request" | Low |
| SH11 | Data protection officer / regulator | Candidate offstage stakeholders; roles unconfirmed | Lawful, minimal sharing of personal data | Neither role is named in the scenario. Information-sharing concerns suggest checking the responsible roles; A7/Q7 leave obligations subject to confirmation. | Potentially high; role and authority unconfirmed |
| SH12 | Venue provider | Inferred external/offstage stakeholder | Bookings that respect venue capacity | Venue constraints are explicit in the scenario; a separate provider role and its interactions are not confirmed. | Low (proposed) |


## Classification table

| ID | Stakeholder | Interaction under the proposed system boundary | Actor / offstage classification | Evidence and uncertainty |
|---|---|---|---|---|
| SH01 | Coordinator | Retrieves allocation exceptions; records suitability assessments, mentor matches and event allocations; inspects provisional/expiry information. | Primary actor for UC01 and UC04-UC07; UC07 is limited to inspection. | Scenario establishes coordination information needs and allocation constraints. Assignment of these operations to this role is proposed; Q2/Q4/Q5 determine authority. |
| SH02 | Administrator | Records participant requests, tracks their position, records representative authority and maintains follow-up actions/outcomes. | Primary actor for UC02, UC03 and UC08-UC10. | Scenario identifies incomplete requests, fragmented records and blocked capacity. Specific administrative permissions remain proposed; Q1/Q3/Q5/Q6 apply. UC08 records authority; it does not grant it, and UC10 records an outcome rather than authorising withdrawal. |
| SH03 | Service user / participant | Supplies requests and evidence to staff and receives progress information through staff. No direct software interaction assumed. | Offstage stakeholder for this software boundary. | Participant requests and information needs are explicit; self-service access is not. If direct access is agreed, add the relevant participant goals as actor interactions. |
| SH04 | Mentor | Supplies suitability/availability information through staff; does not update the system directly under the proposed boundary. | Offstage stakeholder. | Matching criteria are explicit. The method of supplying availability and declaring conflicts is not specified. |
| SH05 | Facilitator | Supplies practical event constraints through staff. No direct interaction assumed. | Offstage stakeholder. | Facilitator constraints are explicit; direct account access is not. |
| SH06 | Reviewer | Records review evidence and proposed or authorised changes while retaining earlier decision evidence. | Primary actor for UC11. | Reviews, new actions and preservation of evidence are explicit. UC11 preserves the distinction between review proposals and authorised decisions; reviewer decision and amendment permissions remain Q5/Q6. |
| SH07 | Manager | Requests outcome summaries directly. | Primary actor for UC12. | Management reporting and consistent outcome reasons are explicit. Direct report access is proposed; Q7 determines content. Approval authority is not inferred from the title alone. |
| SH08 | Partner representative | Receives permitted information through staff; direct retrieval is deferred. | Offstage under the current proposed boundary; potential primary actor for deferred UC13. | Role-limited sharing is explicit. Direct access requires functional scope and Q7 agreement; NFR01 alone does not establish retrieval capability. |
| SH09 | Funder | Receives approved summaries from KEDN staff, without directly requesting them from the system. | Offstage stakeholder. | Funder reporting is explicit; a funder portal is not. Privacy and reporting interests still shape UC12. |
| SH10 | Representative / assistant acting for a participant | Assists through staff; staff record the authority supplied. No direct system interaction assumed. | Offstage stakeholder. | Assistance and uncertainty over authority are explicit; Q3 determines permitted assistance and disclosure. |
| SH11 | Data-protection officer / regulator | No direct system interaction assumed. Relevant obligations influence access and retention requirements. | Candidate offstage stakeholders, subject to confirming the actual roles. | Neither role is named in the scenario. They should not be presented as confirmed KEDN posts; A7/Q7 record the uncertainty. A DPO and regulator have different responsibilities. |
| SH12 | Venue provider | Venue information reaches staff; no direct system interaction assumed. | Inferred offstage stakeholder. | Venue constraints are explicit; a separate provider and the communication method are inferred. |

## Primary and supporting actors

**Primary actors under the proposed boundary:** Coordinator, Administrator, Reviewer and Manager. Partner representative is a potential primary actor only if deferred UC13 is adopted.

**Supporting actors:** none established for the selected interactions. The scenario does not identify an external service that the system calls or another role that directly supplies a service during these use cases. Mentors and venues contribute to the wider business process, but that alone does not make them supporting software actors.
