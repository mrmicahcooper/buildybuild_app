@http://www.pivotaltracker.com/story/show/18677747
Feature: Admin signs in
  In order to create a website
  As an admin on the home page
  I want to sign in

  - Home page displays sign link
  - Following that link displays a form with the following fields:
  -- Email
  -- Password
  - Submitting that form displays the control panel

  Scenario: sucessful login
    Given the following user:
      | username | John Doe         |
      | email    | john@example.com |
    And I am on the home page
    And I follow "sign in"
    When I fill in the following:
      | email    | john@example.com |
      | password | password         |
    And I press "sign in"
    Then I should see "Control Panel"
