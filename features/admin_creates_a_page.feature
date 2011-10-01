@http://www.pivotaltracker.com/story/show/18683003
Feature: Admin creates a page
  In order to create a web page
  As an admin on the control panel
  I want to create a new page

  - Control panel displays create page link
  - Following that link displays a form with the following forms:
  -- Page name
  -- Page content
  - Submitting that form displays a new page

  Scenario: create page
    Given I am signed in
    When I follow "Add new page"
    And I fill in the following:
      | Name  | First Page                                 |
      | Title | Page title                                 |
      | Body  | Welcome to the website. We are lots of fun |
    And I press "Save page"
    Then I should see "Control Panel"

    When I follow "First Page"
    Then I should see "Welcome to the website. We are lots of fun"

  Scenario: invalid page
    Given I am signed in
    And the following page: 
      | name  | RoR           |
      | title | Ruby on Rails |
    When I follow "Add new page"
    And I fill in the following:
      | Name | RoR         |
      | Body | awesomeness |
    And I press "Save page"
    Then I should see "Name has already been taken"
    And I should see "Title can't be blank"

    When I fill in "Name" with ""
    And I press "Save page"
    Then I should see "Name can't be blank"
