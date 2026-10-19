@NFR01 @UC13 @BR05
Feature: Restrict partner access to request information
  Partner permissions in these examples are proposed test conditions
  pending agreement of the information-sharing rules.

  @EX04 @failure @proposed_permissions
  Scenario: A partner requests a case outside its permitted involvement
    Given partner representative K8 is authenticated
    And the agreed test permissions do not allow K8 to access request R18
    When K8 requests information about R18
    Then no case information about R18 is disclosed to K8
    And K8 is informed that access is not permitted
