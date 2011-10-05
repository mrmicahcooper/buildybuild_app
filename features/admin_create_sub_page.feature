@http://www.pivotaltracker.com/story/show/19208941
Feature: Admin create sub page
  In order to have more content
  As an admin on the control panel
  I want to create a subpage

  - Control panel displays add new page link
  - Following that link displays a link with the following fields:
  -- Name
  -- Title
  -- Parent page
  -- Body
  - Submitting that form creates a sub page

  Scenario:
    Given I am signed in
    And the following page:
      | name  | First Page |
    And I follow "Add new page"
    And I fill in the following:
      | Name  | awesome       |
      | Title | sweet         |
      | Body  | this is tight |
    And I select "First Page" from "Parent page"
    And I press "Save page"
