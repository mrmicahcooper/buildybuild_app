@http://www.pivotaltracker.com/story/show/19118397
Feature: Admin adds website name
  In order to know what site users are on
  As a admin on the control panel
  I want to add a website name

  - Control panel displays setting link
  - Following that link displays a form with the following field
  - Website name
  - Submitting that form updates the website name

  Scenario:
    Given I am signed in
    When I follow "Settings"
    And I fill in "Website name" with "Buildybuild"
    And I press "Save"
    Then I should see "Control Panel"
    And I should see "Website name updated"
    And I should see "Buildybuild" within "header"
