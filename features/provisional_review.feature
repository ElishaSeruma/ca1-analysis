@FR08 @UC07
Feature: Identify expired provisional allocations
  Expiry conditions require agreement with KEDN.
  The expiry time below is proposed test data, not a confirmed KEDN policy.

  @EX03 @boundary @proposed_policy
  Scenario: A provisional allocation reaches its expiry time
    Given provisional allocation A31 expires on 19 October 2026 at 12:00
    And the current time is 19 October 2026 at 11:59
    And A31 has not been flagged as expired
    When the current time reaches 19 October 2026 at 12:00
    Then A31 is flagged to the coordinator as expired
