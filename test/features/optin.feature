Feature: Opt in
  Scenario: The email input should not be visible
    Given the browser is open at "/"
    Then the email input is not visible

  Scenario: The email input should be visible after opt-in
    Given the browser is open at "/"
    When the user clicks on the opt-in checkbox
    Then the email input is visible
