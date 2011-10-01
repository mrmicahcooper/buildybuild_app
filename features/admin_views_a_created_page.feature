@http://www.pivotaltracker.com/story/show/18677903
Feature: User views a created page
  In order to look a a page I created
  As an admin on the control panel
  I want to view a created page

 Scenario:
    Given the following page:
      | name  | First Page                   |
      | title | welcome to buildy build      |
      | body  | this is the body of the page |
    And 1 user
    And I am on the home page
    And I follow "First Page"
    Then I should see "this is the body of the page"

