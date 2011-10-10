@http://www.pivotaltracker.com/story/show/18744743
Feature: Admin deletes page
  In order to get rid of pages I no longer want
  As an admin on the control panel
  I want to delete a page

  - Control panel displays lists and sublists of all pages with a delete link by each one
  - Following that link prompts for deletion confirmation
  - Comfirming deletion deletes the page

  Scenario: deletes a parent page
    Given the following page:
      | name | Page 1 |
    And I am signed in
    When I follow "delete"
    Then I should see "Page 1 has been deleted"
    And I should not see "Page 1" within ".control_panel"


  Scenario: Admin cannot delete a parent page that has children
    Given the page named "cool" has a sub page named "awesome"
    And I am signed in
    And I follow "delete" within ".cool"
    Then I should see "You cannot delete a parent page before deleting all its children"
