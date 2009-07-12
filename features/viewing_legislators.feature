Feature: Viewing legislators
  In order find out the information about a legislator's voting habits
  As a concerned citizen
  I want to be able to view legislators

  
  Scenario: Viewing empty legislators list
    Given no legislators
    When I go to the legislators page
    Then I should see "No legislators registered"

  Scenario Outline: Viewing <legislator_count> legislators
    Given <legislator_count> legislators
    When I go to the legislators page
    Then I should see the legislators
    And I should not see "No legislators registered"
  
  Examples:
  | legislator_count|
  | 1               |
  | 2               |
  | 5               |
  | 10              |
  
  
  
  
