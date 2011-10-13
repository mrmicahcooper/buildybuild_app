@http://www.pivotaltracker.com/story/show/18745505
Feature: User views new post
  In order to see new goodies posted
  As a user on a page
  I want to view a new post

  - Home page displays a page link
  - Following that link displays a page with a few posts

  Scenario:
  Given the following page:
    | name | Cool Page |
    | body |           |
  And that page has the following post:
    | title | welcome to my blog                 |
    | body  | Im glad you all see my first post |
  And I am signed in
  When I follow "Cool Page"
  Then I should see "welcome to my blog"
  And I should see "Im glad you all see my first post"
