@selenium
Feature: Chat
  In order to be social
  As a User
  I want to have a conversation online
  
  Background: Signed in
    Given I am on the homepage
    And I have signed in as "Steve"
  
  Scenario: Chatting to myself
    When I fill in "Message" with "Hello?"
    And I press "Send"
    Then I should see "Hello?" within the chat log