Feature: BBC Error Register Details

  Scenario: Inputting incorrect email so registration will fail
    Given I access the bbc register details page
    And I input correct date of birth
    And I input incorrect email
    And I input correct registration details for other areas
    When I click register
    Then I should receive an invalid email error
