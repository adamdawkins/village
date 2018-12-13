Feature: Sponsor Signup

  As a Sponsor
  I want to sign up
  So that I can sponsor a child and change the world


  Scenario: New Sponsor
    Given I am on the sponsor sign up page
    When I fill in "Email" with "adam@dragondrop.uk"
    And the password fields with "password"
    And I submit the form
    Then I should be on my bank details page

