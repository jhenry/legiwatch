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
  
  Scenario: Show profile for a legislator
    Given a legislator exists with first_name: "Bob", last_name: "Dobbs", address1: "21 Oak Street", address2: "Apt. 4", state: "ME", town: "Anytown", zip: "04102", zip4: "1234"
    When I go to the legislators page
    And I follow "Bob Dobbs"
    Then I should see "Bob Dobbs"
    And I should see "21 Oak Street"
    And I should see "Apt. 4"
    And I should see "Anytown, ME 04102-1234"

  