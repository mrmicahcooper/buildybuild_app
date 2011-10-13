@http://www.pivotaltracker.com/story/show/19656377
Feature: Admin views posts for a page
  In order to see and edit whats posts are on a page
  As an admin on the control panel
  I want to see all the posts for a page

  - Each page on the control panel has a posts link next to it
  - Following this link displays a list of post links for that page.

  Scenario: 
    Given the following page:
      | name | pager |
    And that page has the following posts:
      | title       | body                    |
      | first post   | this is the first post  |
      | second post | this is the second post |
    And I am signed in

    When I follow "posts" within ".pager"
    Then I should see "first post"
    And I should see "second post"
