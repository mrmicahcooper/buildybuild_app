@http://www.pivotaltracker.com/story/show/19428669
Feature: User views page title
  In order to know what page I am on from the tab
  As a user on a page
  I want to see the page title

  - Page displays page title

  Scenario:

    Given the following parent page:
      | title | webpage      |
      | name  | website page |
    And I am signed in
    And I am on the home page
    Then I should see "Webpage" within "title"
