@http://www.pivotaltracker.com/story/show/18686855
Feature: New user sets up new admin account
  In order to create a site as a user
  As an admin viewing the home page for the first time
  I want to setup my website

  - Home page displays a form with the following fields:
  -- Website name
  -- Email
  -- Password
  -- Confirm password
  - Submitting that form displays the admin console


  Scenario: first time admin views site
    Given I am on the home page
    And show me the page
    And I fill in the following:
      | Email            | mrmicahcooper@gmail.com |
      | Create password  | password                |
      | Confirm password | password                |
    And I press "create account"
    Then I should see "Account has been created"
    And I should see "Please confirm your email to continue"
