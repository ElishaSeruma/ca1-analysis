@FR10 @UC11 @BR03 @BR04
Feature: Preserve decision history during reviews
  Silence does not constitute approval of a proposed change.

  @EX05 @rule
  Scenario: A proposed change receives no approval
    Given request R18 has confirmed arrangement V1
    And the evidence supporting V1 is retained
    And review RV2 proposes a change to V1
    When the reviewer records that no approval response has been received
    Then no formal approval is recorded
    And V1 remains the confirmed arrangement
    And the evidence supporting V1 remains available
