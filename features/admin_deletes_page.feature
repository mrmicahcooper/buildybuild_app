@http://www.pivotaltracker.com/story/show/18744743
Feature: Admin deletes page
  In order to get rid of pages I no longer want
  As an admin on the control panel
  I want to delete a page

  - Control panel displays lists and sublists of all pages with a delete link by each one
  - Following that link prompts for deletion confirmation
  - Comfirming deletion deletes the page

  Scenario:
    Given the following page:
      | name | Page 1 |
    And I am signed in
    When I follow "delete"
    Then I should see "Page 1 has been deleted"
    And I should not see "Page 1" within ".control_panel"

