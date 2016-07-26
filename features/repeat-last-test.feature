Feature: repeating the last test

  As a developer having made some adjustments to my code base
  I want to be able to easily repeat the last run test
  So that I can verify whether my code and tests work now.

  - send the operation "repeatLastTest" to repeat the last test


  Background:
    Given Tertestrial is running inside the "js-cucumber-mocha" example application


  Scenario: with a previous test
    When sending the command:
      | OPERATION | FILENAME             |
      | testFile  | features/one.feature |
    Then I see "cucumber-js features/one.feature"
    When sending the command:
      | OPERATION      |
      | repeatLastTest |
    Then I see "cucumber-js features/one.feature"


  Scenario: without a previous test
    When sending the command:
      | OPERATION      |
      | repeatLastTest |
    Then I see "No previous test run"