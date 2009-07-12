Feature: Manage Legislators
  So that I can maintain legislator profiles
  As a user 
  I want to have the tools to input and update legislator information 
  
  Scenario: Create a legislator
    Given I am on the new legislator page
    When I fill in legislator information
    | first_name| last_name|
    | Bob       | Dobbs    |
    Then I should see "Bob Dobbs"
