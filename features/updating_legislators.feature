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
  
  
  
