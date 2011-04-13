@selenium
Feature: Chat
  In order to be social
  As a User
  I want to have a conversation online
  
  Scenario: Chatting to myself
    Given I am signed in as "Steve"
    When I fill in "Message" with "Hello?"
    And I press "Send"
    Then I should see "Hello?" within the chat log
  
  Scenario: Two-way conversation
    Given I have a browser with "Ashley" signed in
    And I switch browsers to "Steve"
    And I am signed in as "Steve"
    
    When I say "Hello Ashley"
    
    When I switch browsers to "Ashley"
    Then I should see "Hi Ashley"
    Then I should see "Hello Ashley"
    
    When I say "Yo"
    And I switch browsers to "Steve"
    
    Then I should see "Steve"
    Then I should see "Yo"