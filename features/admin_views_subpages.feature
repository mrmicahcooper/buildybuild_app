@http://www.pivotaltracker.com/story/show/19314351
Feature: Admin views subpages
  In order to work on subpages from the control panel
  As an admin on the control panel
  I want to view subpages

  - Control panel displays pages with sub pages

  Scenario:
    Given the following parent page:
      | name | About Me |
    And that parent_page has the following sub page:
      | name | Cool stuff |
