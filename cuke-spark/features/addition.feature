Feature: Addition
  Scenario: Adding one plus two should equal three
    Given I open the application
    When I click the "1" button
    And I click the "plus" button
    And I click the "2" button
    And I click the "equals" button
    Then the display should show "3"