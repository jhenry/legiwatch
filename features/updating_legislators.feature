Feature: Updating legislators
  In order keep a legislator's information up-to-date
  As a administrator
  I want to be able to edit a legislator's information

  Scenario: Editing the name
    Given 1 legislator
    When I go to his update legislator page
    And I fill in "First Name" with "Stephen"
    And I fill in "Last Name" with "Colbert"
    And I press "Update"
    Then I should see "Stephen Colbert"
    
  Scenario: Editing the address
    Given 1 legislator
    When I go to his update legislator page
    And I fill in legislator information
    | first_name| last_name| address1     | address2| town   | state| zip  | zip4|
    | Bobby     | Dobbus   | 23 Oak Street| Apt. 5  | Anytown| ME   | 04102| 1234|
    And I press "Update"
    Then I should see "21 Oak Street"
    Then I should see "Apt. 4"
    Then I should see "Anytown, ME 04102-1234"
  
