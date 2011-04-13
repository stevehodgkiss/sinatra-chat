Feature: Identity
  In order to chat
  As a User
  I want to assign a username to identify myself with
  
  Background:
    Given I am on the homepage

  Scenario: Sign in
    Given I fill in "Name" with "Steve"
    And I press "Go"
    Then I should see "Hi Steve"
    And I should see "Sign out"
  
  Scenario: Sign out
    Given I am signed in as "Steve"
    When I follow "Sign out"
    Then I should see "Sign in"
    And I should not see "Steve"