@FR01 @FR02 @UC02
Feature: Record a participant request
  Requests received by staff are linked to the relevant participant.

  @EX01 @success
  Scenario: Record a combined request for an existing participant
    Given participant P104 has an existing participant record
    And an administrator receives a request from P104 by email
    When the administrator records a request for an event and mentoring
    Then the request is linked to participant P104
    And the requested support includes both an event and mentoring
    And the arrival channel is recorded as email
