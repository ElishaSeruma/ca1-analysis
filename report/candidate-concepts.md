# Candidate concepts and domain model

## Candidate decisions

| Scenario term | Classification | Decision and reason | Evidence |
|---|---|---|---|
| Participant / service user | Domain person; synonyms | Merge as Participant. One vocabulary for the recipient of support. | FR01; Service user statement. |
| Request | Transaction | Keep. Support type, stage and waiting reason belong to a request. | FR02-FR04; UC02/UC03. |
| Suitability assessment | Judgement record | Keep as Assessment. Retain factors, outcome and reason. | FR05; UC04. |
| Provisional allocation / confirmed arrangement | Transaction and states | Keep Allocation. Use status for provisional/confirmed positions, not separate classes. | FR06-FR08; Allocation and coordination. |
| Mentor match | Allocation variation | Merge into Allocation with a Mentor target. Retain mentor-specific checks. | FR06; UC05. |
| Event / course / workshop | Service activity | Merge as Event for this scope. | Organisation and current service; FR07. |
| Mentor | Domain person/role | Keep. Experience, availability and location affect matching. | Allocation and coordination. |
| Venue | Place | Keep. A venue's constraints affect allocations. | FR07; UC06. |
| Coordinator / administrator / reviewer / facilitator | Roles | Merge retained staff identities into StaffMember with role. Actor goals remain distinct. | FR09/FR10; facilitator constraints; NFR04. |
| Outstanding action | Work record | Keep as Action. Ownership and due dates must be retained. | FR09; UC09. |
| Review | Historical record | Keep. New findings and resulting actions must not erase earlier evidence. | UC11; Reviewer statement. |
| Earlier version | Historical record | Keep as ArrangementVersion. Retain an allocation's previous position. | FR10; revised BR03. |
| Formal decision | Historical record | Keep as Decision. Distinguish explicit authority from a review proposal. | Revised BR04; UC11. |
| Representative / assisting organisation | Domain role | Keep as Representative. Person and organisation are alternatives, not an invented inheritance hierarchy. | FR12; UC08. |
| Authority to act | Relationship information | Keep as Representation. Authority belongs to a particular representative-participant relationship. | FR12; Q3. |
| Expiry date / stage / waiting reason | Values | Convert to attributes of Allocation or Request. No separate identity is needed. | FR03/FR04/FR08. |
| Capacity / location | Values | Convert to Event/Venue attributes. | FR07. |
| Conflict of interest | Matching fact | Retain as assessment evidence, not a universal Mentor flag. A conflict concerns a proposed match. | FR06; revised BR06. |
| Partner / funder | Stakeholders | Omit as standalone classes here. Reporting/sharing interests do not establish retained partner transactions. | FR14; deferred UC13. |
| Summary report | Output | Omit as a stored domain class. Stored report history is not required. | FR14; UC12. |
| Spreadsheet / form / email | Existing records and channels | Omit as classes. Retain arrivalChannel on Request. | FR02. |
| Dashboard / controller / database | Interface or implementation | Exclude from the conceptual model. | Lecture 06; lab model/design distinction. |
| Accounting / specialist professional system | Outside scope | Exclude. | Scenario scope. |

## Attributes

Dates and status values stay with the record they describe. Request holds progress and outcome reasons. Assessment holds suitability evidence. Allocation holds its current position; ArrangementVersion retains earlier positions. Action holds its due date and status. Representation holds authority scope and evidence. No methods, software types or foreign keys are included.

## Associations and multiplicity

These are modelling choices, not additional confirmed KEDN policy. Multiplicities allow missing arrangements and historical records. They do not set workload limits.

| Relationship | Reading and basis |
|---|---|
| Participant submits Request | Each Request has one Participant. A Participant may have no requests or many; repeated/concurrent requests remain A1. |
| Request has Assessment | Each Assessment concerns one Request. A Request may have no assessments or several retained assessments. FR05; repeated assessment is a modelling choice. |
| Request has Allocation | Each Allocation concerns one Request. A Request may have none or several, including event and mentoring components or replacements. FR02/FR06/FR07. |
| Mentor serves / Event receives Allocation | Each Allocation targets exactly one Mentor or one Event, never both. Each target may have many allocations over time. This is the chosen transaction granularity. Capacity checks constrain active allocations, not lifetime multiplicity. |
| Venue hosts Event | An Event has zero or one Venue; a Venue may host many Events over time. An unassigned venue is allowed. Multi-venue events are not assumed. |
| StaffMember facilitates Event | Events may have zero or many assigned facilitators; staff may facilitate many events. Only staff in a facilitator role participate. These are permissive planning multiplicities, not a confirmed staffing rule. |
| Request has Action / Review / Decision | Each record belongs to one Request; a Request may have none or many of each. FR09/FR10 and review/decision evidence. |
| StaffMember owns Action | Each Action has one recorded owner. A staff member may own many Actions. This model assumes staff-owned follow-up; outside-organisation waiting stays on Request. FR09. |
| StaffMember records Assessment / Review / ArrangementVersion | Each record identifies one recording staff member. A staff member may record many. NFR04 and responsibility evidence. |
| StaffMember makes Decision | Each formal Decision identifies one authorised decision maker. A staff member may make many. Multi-person approval is not specified. |
| Review generates Action / informs Decision | Each Action or Decision has zero or one originating Review. A Review may generate many. Records created outside a review have no review link. |
| Allocation retains ArrangementVersion | Each version belongs to one Allocation. Every recorded Allocation has at least its first version. Later versions preserve earlier positions. FR10. |
| Decision authorises ArrangementVersion | A version has zero or one authorising Decision. A Decision may authorise several linked versions. Operational/proposed positions may have no Decision. Formal approval is never assumed from absence of a link. |
| Participant has / Representative holds Representation | Each Representation links one Participant and one Representative. Either may have many such relationships. This preserves participant-specific authority without placing it on the representative globally. FR12. |

## Modelling rationale

Allocation is a transaction, like Enrollment in the lab. It separates the request from the event or mentor and carries status and expiry. A request for both services has separate allocations. A replacement target creates another Allocation; the earlier one remains in the request history.

ArrangementVersion preserves state changes. Review preserves findings. Decision records explicit formal authority. These concepts have different meanings and are not merged into one generic history class. Actions can arise with or without a review.

The model has 14 conceptual classes. It uses plain, named associations with multiplicity at both ends. Generalisation, composition, navigability and software components are unnecessary here. Conflict, readiness, capacity and access checks remain rules; multiplicity alone does not enforce them.

The initial scope does not specify detailed session scheduling, attendance, payments or learning-content delivery. Those concepts are not added. The model does not add a partner portal or a provisional-review recording capability to UC07.

## Model limits

The model assumes one target per Allocation, one venue per Event, staff-owned actions and one recorded formal decision maker. These choices require validation if the scope expands. Expiry/approval policies and links between reviews and versions remain the uncertainties recorded in Q4-Q6. No fixed expiry duration, automatic release or conflict exception is invented.

## Sources

- Scenario 15: Requests, eligibility and preparation; Allocation and coordination; Progress, review and exceptions; Information, reporting and scope.
- Existing FR01-FR14, revised business rules and UC02-UC12.
- Lecture 06: conceptual classes, attributes, associations, multiplicity and model-quality checks.
- Session 6 Laboratory: transaction records, named plain associations and multiplicity at both ends. CampusHub classes and waiting-list policies are examples, not KEDN requirements.
