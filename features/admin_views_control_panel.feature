@http://www.pivotaltracker.com/story/show/18745269
Feature: Admin views control panel
  In order to admin my site
  As an admin
  I want to view my control panel

  - Control panel displays list of lists for pages and subpages

  Scenario: admin views control panel
    Given I am signed in
    Then I should see "sign out"
    And I should see "Control Panel"

  Scenario: navigates to control panel
  Given the following page:
    | name | home |
  And I am signed in
  When I follow "Home"
  And I follow "control panel"
  Then I should see "Control Panel"
