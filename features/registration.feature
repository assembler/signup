Feature: Registration
  As an unregistered user
  I should be able to sign up
  So that I can access website
  
  Scenario Outline: User registration
    Given I am on the user registration page
    When I fill in "Email" with "<email>"
    And I fill in "Full name" with "<full name>"
    And I fill in "Password" with "<password>"
    And I fill in "Password confirmation" with "<password>"
    And I press "Sign up"
    Then I should see "<message>"
    
    Examples:
      | email             | full name | password               | message                         |
      | email@example.com | John M.   | paSSw00rd              | You have signed up successfully |
      |                   | John M.   | paSSw00rd              | Email can't be blank            |
      | invalid           | John M.   | paSSw00rd              | Email is invalid                |
      | email@example.com | John M.   |                        | Password can't be blank         |
      | email@example.com | John M.   | pass                   | Password is too short           |
      | email@example.com | John M.   | pass1pass2pass3pass4p  | Password is too long            |
      | email@example.com | John M.   | password               | Password is too weak            |