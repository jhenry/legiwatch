Feature: Viewing legislators
  In order find out the information about a legislator's voting habits
  As a concerned citizen
  I want to be able to view legislators

  
  Scenario: Viewing empty legislators list
    Given no legislators
    When I go to the legislators page
    Then I should see "No legislators registered"
  
  Scenario: Viewing non-empty legislator list
    Given the legislator
    | first_name | last_name |
    | Bob | Dobbs |
    When I go to the legislators page
    Then I should see the legislator
  
  Scenario: Viewing 2 legislator list
    Given the legislators
    | first_name| last_name |
    | Bob       | Dobbs     |
    | Steven    | Cartwright|
    When I go to the legislators page
    Then I should see the legislators
  
  @focus
  Scenario: Viewing 5 legislators
    Given 5 legislators
    When I go to the legislators page
    Then I should see the legislators
    And I should not see "No legislators registered"
  
  
  
  
  
