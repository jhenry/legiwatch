Feature: Manage Legislators
  So that I can maintain legislator profiles
  As a user 
  I want to have the tools to input and update legislator information 
  
@ignore
  Scenario: Create a legislator
    Given I am on the new legislator page
    When I fill in legislator information
      | first_name| last_name| address1     | address2| town   | state| zip  | zip4|
      | Bob       | Dobbs    | 21 Oak Street| Apt. 4  | Anytown| ME   | 04102| 1234|
    And I press "Create"
    Then I should see "Bob Dobbs"
    And I should see "21 Oak Street"
    And I should see "Apt. 4"
    And I should see "Anytown, ME 04102-1234"
