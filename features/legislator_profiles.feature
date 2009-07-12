Feature: Legislator Profiles
  So that I can view legislator info
  As a constituent
  I want to see accurate contact and biographical information for my legislators
    
  Scenario: Show profile for a legislator
    Given a legislator exists with "first_name": "Bob", "last_name": "Dobbs"
    When I visit the legislators page
    And I click on "Bob Dobbs"
    Then I should see the following legislator:
      |first_name|last_name|
      |Bob|Dobbs|

  
  
  
