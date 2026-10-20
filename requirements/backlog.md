# Backlog

## ST01 - Record a received request

As an administrator, I want to record an event, mentoring or combined request against its participant, so that staff can coordinate the request from a shared record.

**Business value:** Staff can coordinate the request from a shared record.

**Priority:** Must. **Stakeholder links:** SH02; participant interest SH03.

**Requirements:** FR01, FR02. **Rules:** No additional BR required for intake. **Use case:** UC02.

**Acceptance criteria:**

- ST01-AC01: The recorded request identifies its participant, requested support and arrival channel.
- ST01-AC02: A second request for the same identified participant remains linked to that participant.
- ST01-AC03: Incomplete information is not treated as proof of readiness for decision.

**Selected verification example:** EX01 - features/request_intake.feature

**Questions / assumptions / dependencies:** Q1: required intake information; A1/A2: request structure and stages.

## ST02 - Record request progress

As an administrator, I want to record the current request stage and waiting dependency, so that staff can explain the next required contribution.

**Business value:** Staff can explain the next required contribution.

**Priority:** Must. **Stakeholder links:** SH02; SH03.

**Requirements:** FR03, FR04. **Rules:** BR03 for preserved history. **Use case:** UC03.

**Acceptance criteria:**

- ST02-AC01: The current stage is identifiable from the record.
- ST02-AC02: A waiting request distinguishes information, decision or outside-organisation dependency.
- ST02-AC03: A stage change follows the agreed transition policy and retains earlier evidence.

**Selected verification example:** Stage and waiting-reason inspection under FR03/FR04.

**Questions / assumptions / dependencies:** Q1/Q5: stages, readiness and authority.

## ST03 - Confirm a feasible event allocation

As a coordinator, I want to confirm an event place only when its applicable constraints are satisfied, so that participants receive feasible arrangements and capacity is respected.

**Business value:** Participants receive feasible arrangements and capacity is respected.

**Priority:** Must. **Stakeholder links:** SH01; SH03/SH05/SH12 interests.

**Requirements:** FR07; FR08 only for provisional alternative. **Rules:** BR01, BR02, BR04. **Use case:** UC06.

**Acceptance criteria:**

- ST03-AC01: Event capacity, venue and facilitator constraints are established before confirmation.
- ST03-AC02: An unsatisfied or unknown essential constraint prevents confirmation.
- ST03-AC03: A confirmed arrangement requires an explicit authorised decision, not silence.
- ST03-AC04: A permitted provisional arrangement is distinguishable from confirmation.

**Selected verification example:** EX02 - features/allocation.feature

**Questions / assumptions / dependencies:** Q2/Q4/Q5: constraints, provisional conditions and authority. Assessment readiness remains Q1.

## ST04 - Review a provisional arrangement

As a coordinator, I want to inspect provisional allocations and expiry flags, so that I can identify arrangements needing follow-up.

**Business value:** Stalled arrangements are visible for follow-up.

**Priority:** Must. **Stakeholder links:** SH01; SH02.

**Requirements:** FR08; FR13 for consolidated view. **Rules:** BR02, BR04. **Use case:** UC07.

**Acceptance criteria:**

- ST04-AC01: The provisional status and recorded expiry date are visible.
- ST04-AC02: The coordinator is notified when the recorded expiry is reached.
- ST04-AC03: Recording review findings and releasing capacity are outside this story.
- ST04-AC04: Expiry alone does not confirm or automatically release the allocation.

**Selected verification example:** EX03 - features/provisional_review.feature

**Questions / assumptions / dependencies:** Q4: expiry policy and capacity effects. UC07 is limited to inspection.

## ST05 - Obtain permitted partner information

**Status:** Deferred. Applies only if direct partner access is adopted under UC13.

As a partner representative, I want to retrieve only request information permitted for my role and involvement, so that I can contribute without receiving unrelated case history.

**Business value:** I can contribute without receiving unrelated case history.

**Priority:** Could. **Stakeholder links:** SH08; SH03 privacy interest.

**Requirements:** NFR01 limits access. No retrieval FR is specified. **Rules:** BR05. **Use case:** UC13.

**Acceptance criteria:**

- ST05-AC01: Permitted access returns only fields in the approved role/involvement set.
- ST05-AC02: Unauthorised request access returns no case information.
- ST05-AC03: Additional sensitive fields are excluded even when some request access is permitted.

**Selected verification example:** EX04 - features/partner_access.feature (conditional).

**Questions / assumptions / dependencies:** Q7: approved permissions; direct partner access remains a proposed boundary choice.

## ST06 - Distinguish a review proposal from a decision

As a reviewer, I want to record review findings and proposed changes without presenting them as approved decisions, so that the confirmed position and earlier decision basis remain clear.

**Business value:** The confirmed position and earlier decision basis remain clear.

**Priority:** Must. **Stakeholder links:** SH06; SH01/SH03 interests.

**Requirements:** FR10 preserves history; FR09 covers resulting actions. **Rules:** BR03 preserves earlier evidence. BR04 governs approval; detailed approval behaviour remains subject to Q5. **Use case:** UC11.

**Acceptance criteria:**

- ST06-AC01: The review is linked to the earlier evidence without replacing it.
- ST06-AC02: A proposed change remains a proposal until explicit authorised approval is recorded.
- ST06-AC03: An operational update is identifiable separately from a formal decision.
- ST06-AC04: Any recorded formal approval retains approver, time and reason under NFR04.
- ST06-AC05: No response does not alter the confirmed arrangement as an approved change.

**Selected verification example:** EX05 - features/decision_approval.feature

**Questions / assumptions / dependencies:** Q5/Q6: approval authority, review/version relationships and action ownership.
