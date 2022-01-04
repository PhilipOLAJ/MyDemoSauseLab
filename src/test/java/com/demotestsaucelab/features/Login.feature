Feature:  Login
  As a user
  I want to be able to login successfully
  so I can access my account

  Background:  Access the Sauce Demo homepage
    Given I navigate to the Sauce Labs Login Page

  Scenario Outline:  Login Successfully
    And I click the login button
    When I enter the credentials "<Username>" and "<Password>"
    Then I should be logged in successfully

    Examples:
      | Username                | Password      |
      | standard_user           | secret_sauce  |
      | problem_user            | secret_sauce  |
      | performance_glitch_user | secret_sauce  |

    Scenario: Login Failed
      When I enter the Username "problem_user"
      And I enter the Password "secret_sauce"
      And I click the login button
      Then an error message is displayed