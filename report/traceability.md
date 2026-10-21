# Traceability matrix

Links use the current requirements, use cases, stories and domain model. Verification is planned, not executed. A Gherkin example illustrates selected behaviour; it does not prove full coverage.

## Scenario evidence

| Source | Scenario section |
|---|---|
| E01 | Organisation and current service: records are fragmented. |
| E02 | Requests, eligibility and preparation: incomplete requests, suitability and assisted requests. |
| E03 | Allocation and coordination: matching, capacity, provisional arrangements and versions. |
| E04 | Progress, review and exceptions: ownership, decisions, actions and retained evidence. |
| E05 | Information, reporting and scope: exception information, limited sharing, reports and connectivity. |

E01-E05 are source labels for this matrix, not extra requirements.

## Functional requirements

| Evidence / stakeholder goal | FR / priority | Use case / story | Example or planned check | Domain concepts |
|---|---|---|---|---|
| E01; SH02 needs linked participant records. | FR01 - Must | UC02; ST01 | EX01 links a request to an existing participant. Inspect two requests under one participant. | Participant, Request |
| E02; SH02 needs to capture requests from different channels. | FR02 - Must | UC02; ST01 | EX01 records event and mentoring support received by email. | Participant, Request |
| E02; SH02/SH03 need a clear request position. | FR03 - Must | UC03; ST02 | ST02-AC01/AC03; inspect permitted stages and transitions. | Request |
| E02; SH03 needs to know what the request awaits. | FR04 - Must | UC03; ST02 | ST02-AC02; inspect information, decision and outside-organisation waiting cases. No dedicated Gherkin example. | Request |
| E02; SH01 needs a reasoned suitability assessment. | FR05 - Must | UC04 | Inspect the four assessment factors, outcome and reason. No dedicated Gherkin example. | Request, Assessment, StaffMember |
| E03; SH01/SH04 need suitable mentor matches. | FR06 - Must | UC05 | Check experience, conflicts, location, availability and goals before confirmation. No dedicated Gherkin example. | Request, Assessment, Allocation, Mentor |
| E03; SH01/SH05/SH12 need feasible event allocations. | FR07 - Must | UC06; ST03 | EX02 rejects an unsatisfied facilitator constraint. The detailed UC06 covers confirmation and alternatives. | Request, Allocation, Event, Venue, StaffMember |
| E03; SH02 needs stalled provisional arrangements identified. | FR08 - Must | UC05/UC06 for recording; UC07 for inspection; ST04 | EX03 flags an allocation at expiry. Inspect the recorded expiry date. | Allocation, ArrangementVersion |
| E04; SH02 needs visible action ownership and due dates. | FR09 - Must | UC09/UC11; ST06 for review actions | Inspect action owner, due date and status, including overdue work. | Request, Action, StaffMember, Review |
| E03/E04; SH06 needs earlier decision evidence retained. | FR10 - Must | UC11; ST06 | EX05 retains earlier evidence when a proposal receives no approval. Also compare versions before and after a recorded change. | Allocation, ArrangementVersion, Review, Decision, StaffMember |
| E04; SH07 needs consistent outcome reasons. | FR11 - Could | UC10 | Inspect delay, withdrawal and incomplete-outcome reasons. The mandatory standard list remains a proposed policy. | Request |
| E02; SH02/SH10 need participant-specific authority recorded. | FR12 - Could | UC08 | Inspect representative identity, participant link and authority evidence/scope. | Participant, Representative, Representation |
| E05; SH01 needs coordination exceptions visible. | FR13 - Must | UC01/UC07; ST04 for provisional information | Demonstrate all five exception categories. EX03 covers only expiry flagging. | Request, Allocation, Assessment, Action, Event, Venue, Mentor |
| E05; SH07/SH09 need appropriate outcome summaries. | FR14 - Should | UC12 | Inspect output for personal identifiers and approved reporting scope. | Request, Allocation; no stored report class required |

## Quality requirements

| Evidence / stakeholder goal | NFR / priority | Related use case / story | Example or planned check | Domain link / limit |
|---|---|---|---|---|
| E05; SH08/SH03 need limited partner disclosure. | NFR01 - Must | UC13/ST05, conditional | EX04 denies unauthorised case access. Also inspect permitted fields. | Request, Participant contain protected information. Access-role permissions are not modelled. |
| E05; SH09 needs privacy-preserving reports. | NFR02 - Must | UC12 | Inspect identifiers and groups below five. Threshold remains A8. | Request, Allocation supply report data; suppression is an output rule. |
| E05; staff need continuity off-site. | NFR03 - Should | UC03/UC09 | Disconnect, record progress and reconnect. Check the five-minute target and data preservation. | Request, Action; synchronisation is not a conceptual class. |
| E04; SH06/SH07 need traceable changes and decisions. | NFR04 - Must | UC03/UC11; ST06 | Inspect actor, time and reason. Attempt to overwrite earlier evidence. EX05 illustrates preservation only. | StaffMember, Decision, ArrangementVersion. Stage-change audit detail is not explicit in the current model. |
| Service user statement; SH03 needs understandable progress. | NFR05 - Should | UC03; ST02 | Time five users identifying stage and waiting reason. Targets remain A8. | Request.stage and Request.waitingReason. Participant direct access is not assumed. |
| A7; personal records need agreed retention handling. | NFR06 - Must | Applies across personal-record use cases | Test disposal dates with and without a hold under the agreed Q7 policy. | Participant, Request, Representative, Representation. Retention category, due date and hold are not explicit in the current model. |

## Gherkin examples

| ID | File | Behaviour |
|---|---|---|
| EX01 | [request_intake.feature](../features/request_intake.feature) | Successful combined request recording. |
| EX02 | [allocation.feature](../features/allocation.feature) | Event confirmation refused for a facilitator constraint. |
| EX03 | [provisional_review.feature](../features/provisional_review.feature) | Expiry boundary flag. |
| EX04 | [partner_access.feature](../features/partner_access.feature) | Unauthorised partner access refused. Conditional on UC13. |
| EX05 | [decision_approval.feature](../features/decision_approval.feature) | Silence does not approve a proposal; earlier evidence remains. |

## Coverage and remaining limits

All 11 Must FRs link to scenario evidence, a stakeholder goal, a use case and domain concepts. FR03-FR06, FR09 and FR13 rely partly or wholly on planned inspection or demonstration, not existing dedicated Gherkin examples. The catalogue's generic Gherkin references for FR04/FR06 are not backed by separate examples.

UC13/ST05 remain conditional. NFR01 limits disclosure but does not specify the retrieval function. BR04 supplies the approval rule; FR10 supplies history preservation, not a complete approval workflow.

The domain model does not explicitly retain mentor-specific conflict-check results, stage-change audit records or retention controls. Those are model-detail gaps, not completed coverage. Q2/Q5-Q7 remain relevant. FR11's standard-list wording is stricter than revised BR07; no agreed list is recorded.
