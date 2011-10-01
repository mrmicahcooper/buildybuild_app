@http://www.pivotaltracker.com/story/show/18683211
Feature: Admin edits a page
  In order to fix any mistakes I made while created a page
  As an admin viewing a page
  I want to edit that page

  - Page displays edit page link
  - Following that link displays a form with the following fields
  -- Page name
  -- Page content
  - Submitting that form updates the page

  Scenario: successful edit
    Given the following page:
      | name | page 1 |
    And I am signed in
    When I follow "edit" within ".page-1"
    And I fill in "Name" with "different page"
    And I press "Save page"
    Then I should see "Page has been updated"
    And I should see "Different Page"

