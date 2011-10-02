@http://www.pivotaltracker.com/story/show/19138939
Feature: Admin signs out
  In order to view the site like a regular user
  As an admin
  I want to sign out

  - Control panel displays sign out link
  - Following that link sing user out

  Scenario:
    Given I am signed in
    When I follow "sign out"
    Then I should see "You have signed out"
    And I should see "sign in"
