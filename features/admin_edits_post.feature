@http://www.pivotaltracker.com/story/show/19656221
Feature: Admin edits post
  In order to fix mistakes I made while adding a post
  As an admin on the control panel
  I want to edit a post

  - Control panel displays view posts  link for a page
  - Following that link displays a list of post links for that page
  - Follow a post link displays a form for editing the post.
  - Submitting that form exits the post

  Scenario:
    Given the following page:
      | name | pager |
    And that page has the following post:
      | title | poster |
    And I am signed in
    When I follow "posts" within ".pager"
    And I follow "poster"
    And I fill in the following:
      | Post title | posted    |
      | Body       | nice body |
    And I press "Save post"
    Then I should see "Post updated"

    When I follow "Pager"
    Then I should see "nice body"
    And I should see "posted"

