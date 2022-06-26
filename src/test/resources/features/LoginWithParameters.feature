@wip
Feature: Library app login feature
  User Story: As a user, I should be able to login with correct credentials to different accounts

  Background: Assuming user is on the login page
    Given user is on the login page

  @librarian @employee
  Scenario: Login as librarian
    When user enters librarian username "librarian34@library"
    And user enters librarian password "Mu8PLRnC"
    Then user should see the dashboard

  @student
  Scenario: Login as student
    When user enters student username "student10@library"
    And user enters student password "3s3wvmPq"
    Then user should see the dashboard