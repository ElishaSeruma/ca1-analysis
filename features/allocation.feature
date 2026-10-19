@FR07 @UC06 @BR01
Feature: Confirm an event allocation
  A vacancy alone does not establish a feasible allocation.

  @EX02 @failure
  Scenario: A facilitator constraint prevents confirmation
    Given event E21 has one available place
    And request R18 satisfies the agreed readiness and suitability conditions
    And the venue constraints for the allocation are satisfied
    But a required facilitator constraint is not satisfied
    When the coordinator requests confirmation of a place for R18 at E21
    Then no confirmed allocation is recorded
    And the coordinator is informed of the unsatisfied facilitator constraint
