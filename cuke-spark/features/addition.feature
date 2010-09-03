Feature: Addition
  Scenario: Adding one plus two should equal three
    When I click the "1" button
    And I click the "+" button
    And I click the "2" button
    And I click the "=" button
    Then the display should show "3"