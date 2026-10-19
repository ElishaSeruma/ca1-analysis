# Use cases

## Shared scope and access assumptions

**System:** Business Training and Mentoring Service Coordination System.

The system supports service coordination and records: requests, assessments, allocations, progress, actions, review history and reporting. Specialist professional systems, financial accounting and unrelated public website functions remain outside the boundary.

The following access arrangements are proposed analysis assumptions, not confirmed KEDN policies:

- Coordinator, Administrator, Reviewer and Manager interact directly with the system for the goals listed below.
- Participants, mentors, facilitators and participant representatives communicate through staff rather than using the system directly.
- Funders receive summaries supplied by staff. Candidate information-governance roles and the inferred venue provider have no assumed direct interaction.
- Direct Partner representative access is conditional and deferred under UC13 until its functional capability and Q7 permissions are agreed. Staff-mediated sharing remains the working arrangement meanwhile.

No supporting actor is established for these interactions. Organisational decisions remain with authorised staff; software checks and records do not supply approval authority. See the [actor-goal catalogue](../stakeholders/actor-goal.md) for the corresponding roles and goals.

## Catalogue

| ID | Use case | Primary actor | Requirement links | Status |
|---|---|---|---|---|
| UC01 | Review Allocation Exceptions | Coordinator | FR13 | Proposed; policy/access validation required |
| UC02 | Record Participant Request | Administrator | FR01, FR02 | Proposed; policy/access validation required |
| UC03 | Update Request Progress | Administrator | FR03, FR04 | Proposed; policy/access validation required |
| UC04 | Assess Request Suitability | Coordinator | FR05 | Proposed; policy/access validation required |
| UC05 | Allocate Mentor | Coordinator | FR06; FR08 for a provisional arrangement | Proposed; policy/access validation required |
| UC06 | Allocate Event Place | Coordinator | FR07; FR08 for a provisional arrangement | Proposed; policy/access validation required |
| UC07 | Review Provisional Allocation | Coordinator | FR08, FR13 | Limited to viewing provisional/expiry information and flags; disposition deferred under Q4 |
| UC08 | Record Representative Authority | Administrator | FR12 | Proposed; policy/access validation required |
| UC09 | Coordinate Follow-up Actions | Administrator | FR09 | Proposed; policy/access validation required |
| UC10 | Record Service Outcome | Administrator | FR11; FR03 for applicable stage changes | Proposed; policy/access validation required |
| UC11 | Record Request Review | Reviewer | FR10, FR09 | Proposed; policy/access validation required |
| UC12 | Generate Outcome Summary | Manager | FR14; NFR02 constrains content | Proposed; policy/access validation required |
| UC13 | View Role-relevant Request Information | Partner representative (conditional) | NFR01 constrains access; functional retrieval capability not specified | Deferred candidate; direct access and functional scope require agreement |

## Brief descriptions

### UC01 - Review Allocation Exceptions

**Primary actor:** Coordinator. **Trigger:** The coordinator needs to investigate outstanding coordination work.

The coordinator requests exception information. The system presents unallocated requests, provisional arrangements, capacity conflicts, overdue actions and incomplete records. The coordinator identifies items needing follow-up. This viewing goal ends once the relevant exceptions are available; changing an allocation is a separate goal.

**Evidence and uncertainty:** Information, reporting and scope. Direct coordinator access is proposed.

### UC02 - Record Participant Request

**Primary actor:** Administrator. **Trigger:** A request arrives through one of the service channels.

The administrator identifies the participant or records the participant details, supplies the available request information and arrival channel, and records whether event support, mentoring or both are requested. The system links the request to the participant and acknowledges the recorded request. Missing evidence does not imply that the request is ready for a decision; readiness is addressed in UC03.

**Evidence and uncertainty:** Organisation and current service; Requests, eligibility and preparation. Participant identification and required intake fields need confirmation under Q1.

### UC03 - Update Request Progress

**Primary actor:** Administrator. **Trigger:** New information or a progress enquiry requires the request position to be reviewed.

The administrator identifies the request and reviews its available evidence and current position. The administrator supplies the progress information and reason for waiting, where applicable. The system checks the proposed stage against agreed progression rules, records the permitted update and shows the current position. This records progress; it does not itself authorise allocation or withdrawal.

**Evidence and uncertainty:** Requests, eligibility and preparation; Service user statement. Stage transitions and readiness remain Q1; decision authority remains Q5.

### UC04 - Assess Request Suitability

**Primary actor:** Coordinator. **Trigger:** A request is presented for suitability assessment.

The coordinator reviews business stage, goals, previous support and practical participation requirements, records the assessment and its reason, and asks the system to retain the result. The system records the assessment with the request and confirms the outcome. Missing assessment evidence is identified rather than interpreted as a favourable assessment.

**Evidence and uncertainty:** Requests, eligibility and preparation. Criteria, priorities and exceptions remain Q2; assessor assignment is proposed.

### UC05 - Allocate Mentor

**Primary actor:** Coordinator. **Trigger:** A mentoring request needs an arrangement.

The coordinator identifies a candidate mentor and reviews experience, conflicts of interest, location, availability and participant goals. The system presents the relevant information and permits confirmation only when the agreed essential requirements are satisfied. The coordinator explicitly confirms the arrangement and the system records it. If information is missing, a provisional arrangement is possible only under an agreed policy; an unresolved conflict is not silently ignored.

**Evidence and uncertainty:** Allocation and coordination; Coordinator statement. Essential thresholds and exception authority remain Q2, provisional policy Q4.

### UC06 - Allocate Event Place

**Primary actor:** Coordinator. **Trigger:** An event request is presented for allocation.

The coordinator identifies the request and proposed event. The system presents capacity, venue and facilitator information, checks the intended allocation against agreed constraints, and records the arrangement only after explicit confirmation by an authorised coordinator. Unsatisfied or unknown constraints prevent confirmation. A separate fully dressed example follows.

**Evidence and uncertainty:** Allocation and coordination; Coordinator statement. Confirmation/provisional conditions remain Q4; decision authority Q5.

### UC07 - Review Provisional Allocation

**Primary actor:** Coordinator. **Trigger:** The coordinator needs to inspect a provisional arrangement, including one flagged as expired.

The coordinator requests the provisional arrangement information. The system presents its provisional status, recorded expiry and any expiry flag, together with relevant exception information. The coordinator identifies which arrangements need follow-up. The goal ends when the current provisional and expiry position is available for inspection; this use case does not record review findings or change the arrangement.

**Evidence and uncertainty:** Allocation and coordination; Administrator statement. FR08 supports expiry recording/flagging and FR13 supports provisional exception information. Recording a review outcome, extending an arrangement or releasing capacity is deferred until the required capability and Q4 policy are agreed. An expiry flag alone is not approval or automatic release. The expiry feature example tests FR08's system response, not a coordinator-initiated review flow.

### UC08 - Record Representative Authority

**Primary actor:** Administrator. **Trigger:** A person or organisation assists a participant.

The administrator identifies the participant and representative and supplies the authority evidence and scope established under KEDN policy. The system records the relationship and authority information and confirms the recorded position. Where authority cannot be established, the record does not itself grant permission to disclose information or approve decisions.

**Evidence and uncertainty:** Requests, eligibility and preparation. Required evidence and authority scope remain Q3.

### UC09 - Coordinate Follow-up Actions

**Primary actor:** Administrator. **Trigger:** New follow-up work is identified or an existing action needs updating.

The administrator identifies the relevant request or review, records an action or updates an existing action with its owner, due date and status, and asks the system to retain it. The system records the action position and confirms the outstanding responsibility. This is one action-coordination session, not the entire service lifecycle.

**Evidence and uncertainty:** Progress, review and exceptions. Ownership, linkages and permissions remain Q6; role assignment is proposed.

### UC10 - Record Service Outcome

**Primary actor:** Administrator. **Trigger:** A delay, withdrawal or incomplete outcome needs recording.

The administrator identifies the affected request or arrangement and supplies the outcome and its reason. The system applies the agreed reason categories and records the permitted outcome, showing its effect on the current position. Where approval is required, an unapproved proposal is not recorded as an authorised withdrawal.

**Evidence and uncertainty:** Progress, review and exceptions; Manager statement. Reason categories and approval conditions remain Q5.

### UC11 - Record Request Review

**Primary actor:** Reviewer. **Trigger:** New evidence or a review prompts reconsideration of an arrangement.

The reviewer identifies the request and relevant earlier arrangement/decision, supplies new evidence and review findings, and identifies resulting actions or proposed changes. The system preserves earlier evidence, records the linked review and permitted revisions, and presents the resulting current position and outstanding actions. A proposal does not become a formal decision without the required authority.

**Evidence and uncertainty:** Progress, review and exceptions; Reviewer statement. Review/version relationships remain Q6, approval requirements Q5.

### UC12 - Generate Outcome Summary

**Primary actor:** Manager. **Trigger:** Management or funder reporting is required.

The manager specifies the reporting scope. The system produces the agreed outcome summary, excluding personal identifiers under FR14 and applying the agreed restrictions on commercially sensitive or identifying detail. The manager receives the summary for permitted use or distribution. The funder does not access the system directly under the proposed boundary.

**Evidence and uncertainty:** Information, reporting and scope. Reporting scope/content remain Q7; numerical suppression thresholds remain proposed under A8.

### UC13 - View Role-relevant Request Information

**Status:** Deferred, conditional candidate. **Potential primary actor:** Partner representative. **Potential trigger:** A partner needs information for its involvement in a request.

If direct partner access is adopted, the partner would identify the relevant request and the system would return only information permitted for that role and involvement. Unauthorised access would disclose no case information. Until that capability is specified and access rules are agreed, partners receive permitted information through staff; UC13 is not a committed direct-access capability.

**Evidence and uncertainty:** Information, reporting and scope; Partner representative statement. NFR01 constrains disclosure but does not specify the retrieval function. Direct access requires an agreed functional requirement and Q7 permissions. The partner-access feature is retained as a conditional acceptance example for that future choice, not evidence that direct access is already in scope.

## UC06 - Allocate Event Place: fully dressed example

### Identification and interests

- **Scope:** Business Training and Mentoring Service Coordination System.
- **Level:** user goal.
- **Primary actor:** Coordinator, assuming authority for this allocation has been established.
- **Supporting actors:** none established for this interaction. Venue/facilitator information is assumed to be available to staff for this interaction; no live external service is assumed.
- **Stakeholder interests:** Participant seeks a feasible place; Coordinator needs a valid allocation; Administrator needs trustworthy capacity information; Facilitator and inferred Venue provider need their constraints respected.
- **Related requirements:** FR07 principally; FR08 for the provisional extension; NFR04 for audit information. Existing arrangement history is protected in line with FR10, although amendment of an existing confirmed arrangement is outside this success path.

### Conditions and guarantees

**Preconditions:** The coordinator is permitted to perform allocation work. A recorded request and an identifiable event exist. The success path concerns a new allocation, rather than amendment of an existing confirmed arrangement. These are assumed starting conditions; capacity, suitability/readiness and confirmation conditions are checked during the interaction.

**Trigger:** The coordinator starts allocation of an event place for the recorded request.

**Minimal guarantee:** No new confirmed allocation is recorded unless the applicable constraints and confirmation authority have been established. Existing confirmed arrangements and their evidence remain unchanged if this attempt does not succeed. An incomplete check or silence is not approval.

**Success guarantee:** A confirmed link between the request/participant and the event is recorded, the resulting capacity position is consistent with that allocation, and the coordinator receives confirmation. The recorded allocation carries actor/time/reason audit information under the proposed NFR04. The exact confirmation rules require Q4/Q5 agreement.

### Main Success Scenario

1. The coordinator identifies the participant request and proposed event.
2. The system presents the request position and relevant event capacity, venue and facilitator constraints.
3. The coordinator supplies any required allocation details and confirms the assessment information needed under the agreed policy.
4. The system checks request readiness/suitability and the proposed place against the applicable event capacity, venue and facilitator constraints, and identifies whether confirmation is permitted.
5. The coordinator explicitly requests confirmation of the proposed allocation.
6. The system rechecks that the relevant conditions still hold and that the coordinator has confirmation authority, then records the confirmed allocation and resulting capacity position with the required audit information.
7. The system acknowledges the confirmed event place and presents the resulting arrangement.

Steps 4 and 6 specify observable responsibilities, not internal methods or architecture. Role assignment, permitted checks and capacity-update behaviour are proposed analysis details requiring validation; they are not all explicitly specified in FR07.

### Extensions

**2a. Request or event cannot be identified — recoverable exception or cancellation.** The system explains that allocation cannot proceed for the supplied reference. The coordinator corrects the identification and resumes at step 1, or cancels; cancellation ends without a new allocation.

**4a. Essential evidence or constraint information is missing — no confirmed allocation.** The system identifies the missing basis and does not permit confirmation. The coordinator may supply the missing information and resume at step 3. If it cannot be supplied, the interaction ends without confirmation. A provisional outcome is available only under 4c.

**4b. Capacity, venue or facilitator constraint is not satisfied — failure or retry.** The system explains the unsatisfied constraint and records no confirmed place. The coordinator may choose another event and resume at step 1, or end the attempt. No priority override is invented.

**4c. Agreed policy permits a provisional arrangement — alternative success.** The coordinator explicitly chooses a provisional arrangement, supplies the information required by the agreed Q4 policy, including an expiry if required by FR08, and requests its recording. The system validates that provisional recording is permitted, records and acknowledges the provisional position, and ends this interaction. The main confirmed-allocation guarantee is not achieved; the alternative guarantee is a clearly identified provisional arrangement. If no provisional policy has been agreed, this branch is unavailable. Whether/how provisional places consume capacity remains Q4.

**5a. Coordinator cancels — cancellation.** No new confirmed allocation is recorded; the attempt ends. No provisional arrangement is created by silence.

**6a. Relevant capacity or another constraint has changed since presentation — recoverable exception or failure.** The system does not confirm the now-invalid allocation and presents the changed position. The coordinator resumes at step 3 with updated information, selects a different event at step 1, or ends. The consistency safeguard is a proposed consequence of FR07, not a prescribed technical locking mechanism.

**6b. Confirmation authority is absent — failure.** The system refuses confirmation and explains that the required authority is missing. The interaction ends without a confirmed place. Any separate approval workflow requires Q5 clarification.

### Special requirements

Role-based disclosure follows agreed Q7 permissions. Audit evidence follows proposed NFR04. Off-site connectivity interruption must not be represented as a successful confirmation without an acknowledged recorded outcome; interruption/recovery and duplicate-attempt handling remain open requirements. No offline synchronisation design or numerical performance target is invented here.

### Open issues and requirement refinements

- **Q1/Q2:** What evidence and suitability conditions are prerequisites for allocation? The interaction must check them; do not hide unresolved validation in a precondition.
- **Q4:** When is confirmation allowed? Are provisional places permitted, when do they expire, and what capacity do they hold? FR08's expiry assumption must be reviewed with these answers.
- **Q5:** Who confirms an allocation and which changes need formal approval?
- **Q7:** What request information may this role see?
- How current must venue/facilitator information be, and who maintains it?
- FR07 addresses preventing invalid confirmation. Explicit recording/acknowledgement, capacity consistency and interruption recovery need requirement review before this flow can be treated as an agreed specification.
