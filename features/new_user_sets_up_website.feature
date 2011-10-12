@http://www.pivotaltracker.com/story/show/18686855
Feature: New user sets up Account
  In order to create a site as a user
  As an admin viewing the home page for the first time
  I want to setup my website

  - Home page displays a form with the following fields:
  -- Username
  -- Email
  -- Password
  -- Confirm password
  - Submitting that form displays the admin console

  Background: 
    Given I am on the home page

  Scenario: first time admin views site
    When I fill in the following:
      | Email                 | mrmicahcooper@gmail.com |
      | Create password       | password                |
      | Password confirmation | password               |
    And I press "create account"
    Then I should see "Account has been created"
    And I should see "sign in!"

  Scenario: bad and blank email
    When I fill in the following:
      | Email                 | mrmicahcooper@gom |
      | Create password       | password          |
      | Password confirmation | passsword         |
    And I press "create account"
    Then I should see "Email is invalid"


  Scenario: passwords don't match
    When I fill in the following:
      | Email                | mrmicahcooper@gmail.com |
      | Create password      | password                |
      | Password confirmation | passwordy               |
    And I press "create account"
    Then I should see "Password should match confirmation"
