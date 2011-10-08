@http://www.pivotaltracker.com/story/show/19432333
Feature: Admin creates page wit markdown
  In order to hage a rich website experience
  As an admin creating a page
  I want to use markdown in the body

  Scenario:
    Given I am signed in
    And the following parent page:
      | name | markdown                              |
      | body | This this is the body of the markdown |
    When I am on the home page
    Then I should see "This this is the body of the markdown" within "p"
