Feature: github Login Page

  # Successful login with valid credentials
  

  # Failed login with invalid password
  Scenario: Failed login with invalid password
    Given The user is on the github login page
    When The user enters "hackingallagher@gmail.com" in the email field
    And The user enters "in_valid_pass" in the password field
    And The user clicks the "Sign in" button
    Then An error message Incorrect username or password. should be displayed

  # Username scenarios
  Scenario: Failed login with a nonexistent username
    Given The user is on the github login page
    When The user enters "nonexistentUser" in the email field
    And The user enters "in_valid_pass" in the password field
    And The user clicks the "Sign in" button
    Then An error message Incorrect username or password. should be displayed

  Scenario: Failed login with an empty username
    Given The user is on the github login page
    When  The user enters "CorrectPassword123" in the password field
    And The user clicks the "Login" button
    Then The form should not be submitted and the login form should still be displayed

  Scenario: Successful login with valid credentials
    Given The user is on the github login page
    When The user enters "hackingallagher" in the email field
    And The user enters "valid_pass" in the password field
    And The user clicks the "Sign in" button
    Then An error message Incorrect username or password. should be displayed
    
  # Password scenarios
  Scenario: Failed login with an empty password
    Given The user is on the github login page
    When The user enters "valid_user@gmail.com" in the email field
    And The user clicks the "Login" button
    Then The form should not be submitted and the login pass should still be displayed

  Scenario: Failed login with a password containing special characters
    Given The user is on the github login page
    When The user enters "valid_user@gmail.com" in the email field
    And The user enters "P@$$w0rd!" in the password field
    And The user clicks the "Sign in" button
    Then An error message Incorrect username or password. should be displayed

  Scenario: Failed login with a password that is too short
    Given The user is on the github login page
    When The user enters "valid_user@gmail.com" in the email field
    And The user enters "123" in the password field
    And The user clicks the "Sign in" button
    Then An error message Incorrect username or password. should be displayed

  Scenario: Failed login with a password that is too long
    Given The user is on the github login page
    When The user enters "valid_user@gmail.com" in the email field
    And The user enters "ThisIsAVeryLongPasswordThatExceedsLimits12345" in the password field
    And The user clicks the "Sign in" button
    Then An error message Incorrect username or password. should be displayed
