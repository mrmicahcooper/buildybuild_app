@http://www.pivotaltracker.com/story/show/18745499
Feature: Admin adds post
  In order to have awesome new updates and goodies
  As an admin on the control panel
  I want to add a new post to a running page

  - Control panel displays an add post link for a page listed
  - Following that link displays a form with the following field:
  -- Title
  -- Post
  --Submitting that form adds a post to the page

  Scenario: 
    Given the following page:
      | name | pager |
    And I am signed in
    And I follow "add post" within ".pager"

    When I fill in the following:
      | Post title   | Blog Title       |
      | Body         | This is the body |
      | Publish date | 2011-01-01       |
    And I press "Save post"
    And I follow "Pager"
    Then I should see "Blog Title"
    And I should see "This is the body"
    And I should see "01/01/2011"
