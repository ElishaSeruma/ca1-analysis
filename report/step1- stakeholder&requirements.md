# Stakeholder and requirements analysis
**Business Problem Statement** 
Kerry Enterprise Development Network provides short courses, workshops and one-to-one mentoring for new and growing businesses. KEDN does not have a single consistent process or information system for managing participant requests from initial interest through assessment, allocation, service delivery, review and closure. Information is fragmented across spreadsheets, forms, email and informal notes, while request states, eligibility, allocation rules, capacity, approvals, responsibilities and outcomes are interpreted inconsistently. This creates risks of incomplete requests, unsuitable allocations, blocked capacity, missed actions, inconsistent decisions, lost decision history and inappropriate information sharing.

# Organisation
**Where will the system operate**
| People | Processes | Volume | Current systems |
|---|---|---|---|
| Coordinator, administrators, mentors, facilitators, reviewers, manager, participants (service users), people acting on a participant's behalf, partner organisations, funders | Receive request → check completeness and eligibility → assess suitability → match or allocate (event or mentor) → deliver → record progress → review → close, withdraw or escalate | **Not stated in the scenario.** Record as Q8 (number of requests, events and mentors per period) | Separate spreadsheets, forms, email, messages and informal notes. No shared status terms (scenario: "Different teams use status terms differently") |

---
# Purpose 
**What outcome should the propese system support**

**Purpose**
--To give KEDN one consistent, traceable way of taking a participant's request for an event, mentoring or both from first interest through assessment, allocation, delivery, review and closure. Every request should have a clear current state, a named person responsible for the next action, and a preserved history of decisions. Information should be shared only to the extent each role needs.-- 
*Propposition: *
Develop a central Business Training and Mentoring Service Coordination System that maintains a single record for participants and requests. Standardising request stages, suitability assessment, matching, capacity, allocation and outcomes. Separating provisional from confirmed arrangements. Tracks actions and responsibilities, preserves an auditable version/decision history, provides coordinator exception dashboards, supports role-based information sharing and reporting and accommodates unreliable connectivity during off-site work


# Scope 
** What is included and excluded? **
*A boundary for analysis and delivery*
**In-scope**
- Maintain a single record per participant and per request (event, mentoring or both)
- Record and progress a request through standard stages
- Record evidence received and identify what is still missing
- Record suitability and eligibility assessments, including the reason
- Match participants to mentors, and allocate participants to events, against capacity and constraints
- Distinguish provisional allocations from confirmed ones, and track their expiry
- Record changes, pauses, withdrawals and partial completion as distinct outcomes
- Assign actions, owners and due dates, and track them
- Record reviews and decisions without overwriting earlier versions
- Record who may act for a participant, and with what authority
- Role-based access to information for staff, partners and funders
- Coordinator exception views and anonymised summary reporting
- Recording work during off-site visits with unreliable connectivity

**Out of scope**
- Specialist professional systems
- Financial accounting (fees, invoicing, payroll)
- Unrelated public website functions


**Present Process**
KEDN is currently receiving requests for events, mentoring/ both though multiple channels. Requests may be incomeplete/ incorrectly submitted and staff memebers have to sift through these requests and distinguish whats an initial interest, whats an actual request thats awaiting evidence & requests ready for a decision. 

Participant goals, registrations, event schedules, mentor availability are held in separate spreadsheets documentation(forms & email).

Currently suitability dependson the participants business stage, goals, previous support and practical participation requirements. 

Staff coordinate event allocations around capacity, venue and facilitator constraints. Mentor matching also considers experience, conflicts of interest, location, availability and participant goals. Some arrangements remain provisional while essential information is missing. Progress, decisions and outstanding actions are recorded using notes, messages and spreadsheets, with teams using status terms differently. Changes and reviews can affect linked arrangements and generate further actions or escalation.

**Consequences**


***This process brings up consequences not limited to:***


*To be noted changes will affect already linked arrangements and generate potential new problems that will require their own resolution process*


Scenario identifies a well identifiable problem with determining whats pending action and who is responsible for that process to move forward.

Participants need to understand whethere they are awaiting new information from KEDN, a decision or an external organisations confirmation. 

Halted partial requests end up blocking the pipleine for capacity to open up

Inconsistent standards for priorities and exceptiona are making it harder for decisions to be made correctly and consitently and ptotrayed to participants.

 

**Evidence assumption Table**
| Scenario evidence | Temporary assumption or interpretation | Question / clarification needed |
|---|---|---|
| Requests can be for an event, mentoring or both, and may be incomplete. Source: Requests, eligibility and preparation. | A2 proposes that event and mentoring requests share a stage model. The scenario does not confirm identical stages or transitions. | Q1: what makes a request ready for decision? Also confirm whether event and mentoring components progress separately. |
| Teams use different status terms, making pending work and responsibility difficult to identify. Source: Progress, review and exceptions. | A3 proposes one responsible coordinator per request. This does not establish who owns each individual action. | Q6: how should versions, reviews and outstanding actions be linked, how is the current confirmed arrangement identified, and who is responsible for the request and each resulting action? |
| Provisional arrangements can block capacity after a request stalls. Source: Administrator statement. | An expiry or review mechanism is a proposed response. No fixed duration or automatic release rule is confirmed. | Q4: when should provisional arrangements expire or become confirmed, and who authorises release? |
| Another person or organisation may assist with a request, but the required authority is unclear. Source: Requests, eligibility and preparation. | Assistance alone is not treated as evidence of permission to receive detailed information or approve decisions. This is a proposed cautious working position, not a confirmed KEDN policy. | Q3: what authority must be recorded, and which actions does it permit? |
| Partners need role-relevant information; reports should avoid unnecessary personal or commercially sensitive information. Source: Information, reporting and scope. |A7 leaves the applicable data-protection and retention obligations subject to confirmation. Detailed access permissions and retention periods are not established by the scenario. | Q7: which information may each role receive, and who confirms the applicable data-protection obligations, retention periods and disposal rules?
|

**Dependencies & Constraints**

| Dependency | Relevance to the proposed service |
|---|---|
| Current mentor availability and suitability information, together with event, venue and facilitator constraints. | Staff need this information to assess whether an allocation is feasible. Who supplies and updates it must be confirmed. |
| KEDN decisions about readiness, eligibility, priority, representative authority and approvals. | Requirements can record these decisions, but the analysis cannot invent the policies. Q1-Q5 remain dependencies for finalising the rules. |
| Agreed relationships between reviews, versions and outstanding actions. | Preserving decision evidence and identifying the current confirmed position depend on resolving Q6. |
| Agreed information-sharing permissions. | Staff, partner and funder access/report content depend on resolving Q7. |
| Outside organisations involved in particular requests. | KEDN may need to track an outstanding external contribution. The scenario does not confirm response commitments or integrations with partner systems. |


***Constraints table***
 
| Item | Status | Effect on scope or analysis |
|---|---|---|
| Initial scope covers service coordination and records; specialist professional systems, financial accounting and unrelated public website functions are excluded. | Explicit scenario boundary. | Limits what the proposed system is intended to support. |
| External partners should receive only role-relevant information; reporting should avoid unnecessary personal or commercially sensitive information. | Explicit scenario restriction. | Limits disclosure and report content. Detailed permissions remain Q7. |
| Connectivity may be unreliable during off-site work. | Explicit operating condition. | Coordination and record-keeping must account for interruptions. A particular offline storage or synchronisation mechanism is not confirmed. |
| Applicable data-protection and retention obligations. | Require confirmation; existing A7 is provisional. | Confirm the obligations before specifying detailed retention or disclosure policies. |
| Request, event and mentor volumes, including peak activity. | Not stated; Q8. | Prevents justified workload and performance targets from being finalised. This is an unknown, not a confirmed capacity limit. |
| Implementation budget and available delivery resources. | Not stated. | Feasibility and release scope cannot be justified using invented budget or staffing limits. |

Migration of existing records may become a dependency if KEDN requires historical data to be carried into the proposed system (A6). The presence of spreadsheets does not itself confirm a migration requirement.
