Feature: Manage Legislators
  So that I can maintain legislator profiles
  As a user 
  I want to have the tools to input and update legislator information 
  
  Scenario: Create a legislator
    Given I am on the new legislator page
    When I create a legislator
      | first_name| middle_name| last_name| suffix_name| address1     | address2| town   | state| zip  | zip4| email1    | email2    | phone1      | phone2      | phone3| fax         |
      | Bob       | I          | Dobbs    | jr         | 21 Oak Street| Apt. 4  | Anytown| ME   | 04102| 1234| the@bo.com| an@sot.com| 207-555-1234| 207-555-9875|       | 207-123-1234|


    Then I should see "Bob Dobbs"
    And I should see "21 Oak Street"
    And I should see "Apt. 4"
    And I should see "Anytown, ME 04102-1234"
