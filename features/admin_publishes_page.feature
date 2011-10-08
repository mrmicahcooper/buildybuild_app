@http://www.pivotaltracker.com/story/show/19420733
Feature: Admin publishes page
  In order to have drafts and futre pages
  As an admin creating a pge
  I want to enter a publish date

  - New page form displays field for publish date
  - submitting a publish date makes that page public on that date

  Background:
    Given I am signed in
    And I follow "Add new page"

  Scenario: publish a page
    When I fill in the following:
      | Name         | First Page                                 |
      | Title        | Page title                                 |
      | Body         | Welcome to the website. We are lots of fun |
      | Publish date | 2010-10-01                                 |
    And  press "Save page"
    Then I should see "First Page"
    And I should see "10/01/2010"
    Then I should see "First Page"

  Scenario: page is not published yet
    When I fill in the following:
      | Name         | First Page                                 |
      | Title        | Page title                                 |
      | Body         | Welcome to the website. We are lots of fun |
      | Publish date |                                            |
    And  press "Save page"
    Then I should see "First Page"
    When I follow "sign out"
    Then I should not see "First Page" within ".page"

