# Functional & Non functional requirements
##  Functional requirements 


| ID | Requirement | Source | MoSCoW | Verification |
|---|---|---|---|---|
| FR01 | The system shall maintain a single record per participant, linked to all of their requests. | Scenario: separate spreadsheets/forms; problem statement | Must | Test: create two requests for one participant; both appear under one record |
| FR02 | The system shall record a request for an event, mentoring or both, with the channel it arrived through. | "A participant may request an event, mentoring or both"; "several channels" | Must | Gherkin scenario |
| FR03 | The system shall classify each request into exactly one defined stage (for example Expression of interest, Awaiting evidence, Ready for decision, Provisionally allocated, Confirmed, In delivery, Paused, Withdrawn, Closed). | "distinguish an initial expression of interest, a request awaiting evidence and a request ready for a decision"; SH03 | Must | Inspection of the stage list; test of the stage transitions |
| FR04 | The system shall record, for a request that is waiting, whether it waits on information, a decision or an outside organisation. | SH03 quote | Must | Gherkin scenario |
| FR05 | The system shall record a suitability assessment against business stage, goals, previous support and participation requirements, with a reason. | "Suitability depends on…" | Must | Test |
| FR06 | The system shall allow a mentor match to be confirmed only when experience, conflict of interest, location, availability and goals have each been checked. | SH01 quote; matching criteria | Must | Gherkin (rule/boundary scenario) |
| FR07 | The system shall prevent an event allocation from being confirmed where capacity, venue or facilitator constraints are not satisfied. | "A visible vacancy does not necessarily mean…" | Must | Gherkin (failure scenario) |
| FR08 | The system shall record a provisional allocation with an expiry date and flag it to the coordinator once expired. | SH02 quote; "Provisional allocations sometimes remain…" | Must | Test with a date past expiry |
| FR09 | The system shall record each action with an owner, a due date and a status. | "difficult to identify … who is responsible" | Must | Test |
| FR10 | The system shall preserve earlier versions of an arrangement and the basis of each decision when a change or review occurs. | SH06 quote; "preserve the current confirmed position while retaining evidence" | Must | Test: amend, then view the history |
| FR11 | The system shall record withdrawal, delay and incomplete outcomes using a reason from a standard list. | SH07 quote | Could | Inspection plus test |
| FR12 | The system shall record a person or organisation acting for a participant, and the authority they hold. | "Another person or organisation may assist…" | Could | Test (depends on Q3) |
| FR13 | The system shall show the coordinator unallocated requests, provisional arrangements, capacity conflicts, overdue actions and incomplete records. | Coordinator information needs paragraph | Must | Demonstration |
| FR14 | The system shall produce summary reports for management and funders that exclude personal identifiers. | "Summary reporting … without exposing…" | Should | Inspection of a sample report |



**Decision recording:** The scenario distinguishes operational changes from formal decisions and prohibits treating silence as approval. BR04 records this rule. FR10 addresses preservation of decision history; the approval behaviour remains subject to Q5.

---

## Non-functional requirements

| ID | Category | Requirement (measurable) | Source | MoSCoW | Verification |
|---|---|---|---|---|---|
| NFR01 | Security / privacy | Partner users shall be able to view only the fields defined for their role; 100% of a sample of partner views shall contain no full case history. | SH08 quote | Must | Role-based access test |
| NFR02 | Privacy | Funder reports shall contain no personal identifiers, and any group with fewer than 5 participants shall be suppressed. | Funder reporting statement | Must | Report inspection (the threshold of 5 is Assumption A8) |
| NFR03 | Availability (offline) | Staff shall be able to record progress offline, and offline entries shall synchronise within 5 minutes of reconnection with no data loss. | "Connectivity may be unreliable" | Should | Simulated disconnection test |
| NFR04 | Auditability | 100% of stage changes and decisions shall record who made them, when, and the reason; audit records shall not be editable. | SH06 and SH07 quotes | Must | Audit log inspection |
| NFR05 | Usability | A participant or staff member shall be able to identify a request's current stage and what it waits on within 2 interactions/30 seconds. | SH03 quote | Should | Usability test with 5 users |
| NFR06 | Retention / compliance | Personal records shall have a retention category and due date under the agreed policy. Records due for disposal shall be deleted or anonymised unless an authorised hold applies. Policy periods and disposal deadlines remain subject to Q7. | A7; retention policy under Q7 | Must | Test records before and at disposal dates, with and without a hold; deadlines depend on Q7 |
