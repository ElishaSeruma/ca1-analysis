# Actor-goal catalogue

## Boundary and identifiers

**System:** Business Training and Mentoring Service Coordination System.

Coordinator, Administrator, Reviewer and Manager interact directly under the proposed access assumptions. Partner representative access is deferred and conditional under UC13; permitted information is supplied through staff meanwhile. Other stakeholders communicate through staff or remain offstage. Roles in the table are primary actors for their goals, with the UC13 role conditional. No supporting actor is established for these interactions.

UC01-UC13 match the IDs, names and primary actors in [the use-case catalogue](../report/use-cases.md). UC07 is limited to inspecting provisional/expiry information; UC13 remains a deferred, conditional candidate. A requirement can support more than one goal, and several requirements may contribute to one use case.

## Actor-goal table

| Actor / stakeholder | Goal | Value to stakeholders | Candidate use case | Existing requirement links | Scenario evidence and unresolved details |
|---|---|---|---|---|---|
| Coordinator / SH01 | Identify requests and arrangements requiring coordination attention. | Makes unallocated requests, capacity conflicts, missing information and overdue work visible. | UC01 - Review Allocation Exceptions | FR13 | Information, reporting and scope. Direct coordinator access is proposed. |
| Administrator / SH02 | Record a participant's request for an event, mentoring or both against the appropriate participant record. | Preserves the request and its arrival channel in a consistent participant context. | UC02 - Record Participant Request | FR01, FR02 | Organisation and current service; Requests, eligibility and preparation. Recording on behalf of participants is a boundary assumption. |
| Administrator / SH02 | Establish and record a request's current stage and what it is waiting for. | Helps staff explain progress and identify what must happen next. | UC03 - Update Request Progress | FR03, FR04 | Requests, eligibility and preparation; Service user statement. Readiness and stage rules remain Q1; approval permissions remain Q5. |
| Coordinator / SH01 | Record a suitability assessment and its reason. | Supports consistent assessment against participant needs and participation requirements. | UC04 - Assess Request Suitability | FR05 | Requests, eligibility and preparation. Assessment responsibility is proposed; criteria, priority and exceptions remain Q2. |
| Coordinator / SH01 | Establish a mentor arrangement that satisfies the relevant matching constraints. | Reduces the risk of treating availability alone as a suitable match. | UC05 - Allocate Mentor | FR06, FR08 where provisional | Allocation and coordination; Coordinator statement. Essential checks, exception authority and confirmation conditions remain Q2/Q4. |
| Coordinator / SH01 | Allocate a participant to an event within its applicable constraints. | Supports feasible bookings within capacity, venue and facilitator limits. | UC06 - Allocate Event Place | FR07, FR08 where provisional | Allocation and coordination. Provisional status and confirmation conditions remain Q4. |
| Coordinator / SH01 | Inspect a provisional arrangement and its expiry position to identify follow-up needs. | Makes stalled or expired arrangements visible without assuming approval or release. | UC07 - Review Provisional Allocation | FR08, FR13 | Viewing only; recording review findings, extension and capacity release are deferred pending capability and Q4 agreement. |
| Administrator / SH02 | Record who assists a participant and the authority established for that assistance. | Makes representative authority available for subsequent permission checks. | UC08 - Record Representative Authority | FR12 | Requests, eligibility and preparation. Required evidence and permitted actions remain Q3. |
| Administrator / SH02 | Assign and track follow-up actions with responsibility and due dates. | Makes outstanding work and ownership visible. | UC09 - Coordinate Follow-up Actions | FR09 | Progress, review and exceptions. Action relationships and ownership remain Q6; assignment permissions need confirmation. |
| Administrator / SH02 | Record a delay, withdrawal or incomplete outcome with its reason. | Supports consistent explanation and reporting of service outcomes. | UC10 - Record Service Outcome | FR11; FR03 for applicable stage changes | Progress, review and exceptions; Manager statement. Reason categories and approval requirements remain Q5. Recording a withdrawal does not itself authorise it. |
| Reviewer / SH06 | Record review evidence and resulting arrangements/actions without losing the earlier decision basis. | Preserves a defensible history and identifies follow-up work. | UC11 - Record Request Review | FR10, FR09 | Progress, review and exceptions; Reviewer statement. Q5/Q6 determine decision authority, version relationships and resulting action ownership. |
| Manager / SH07 | Obtain summaries of service outcomes suitable for management and approved funder reporting. | Supports oversight while limiting unnecessary disclosure. | UC12 - Generate Outcome Summary | FR14; NFR02 restricts output | Information, reporting and scope; Manager statement. Direct manager access is proposed; report content remains Q7 and numerical suppression thresholds remain provisional under A8. |
| Partner representative / SH08 (conditional) | Obtain only information permitted for involvement in a request, if direct access is adopted. | Supports partner work without unrelated case disclosure. | UC13 - View Role-relevant Request Information | NFR01; functional retrieval capability not specified | Deferred candidate. Staff supply permitted information meanwhile; direct access requires functional scope and Q7 agreement. |

## Unresolved traceability gaps

- **UC07:** Limited to viewing the provisional position, expiry and flags supported by FR08/FR13. Recording findings, extension and release remain deferred pending functional scope and Q4 agreement.
- **UC13:** Deferred until direct partner access, its functional requirement and Q7 permissions are agreed. The related feature remains a conditional example; current sharing is staff-mediated.
- **UC11:** The scenario distinguishes operational changes from formal decisions. FR10 preserves history, but approval/decision behaviour still needs clarification under Q5. A review does not itself authorise a change.


## Offstage goals retained in the analysis

| Stakeholder | Interest represented | Related use cases |
|---|---|---|
| Participant / SH03 | Appropriate support and understandable progress. | UC02-UC06 and UC10; staff provide communication under the proposed boundary. A separate notification/communication capability is not established by these links. |
| Mentor / SH04 | Feasible, appropriate matches. | UC05 and its matching rules. |
| Facilitator / SH05 | Feasible event arrangements. | UC06 and event constraints. |
| Funder / SH09 | Suitable summary reporting. | UC12; report supply occurs through KEDN staff. |
| Participant representative / SH10 | Assistance within valid authority. | UC08 and the permissions clarified by Q3/Q7. |
| Candidate information-governance roles / SH11 | Appropriate disclosure and retention. | UC12/UC13 and cross-cutting privacy requirements; the roles themselves require confirmation. |
| Assumed venue provider / SH12 | Feasible venue arrangements. | UC06 and venue constraints. |

