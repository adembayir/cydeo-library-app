Feature: Librarian role should see User Management Page
  @wip
  Scenario: Table columns names
    Given user is on the login page
    And user logs in using "librarian24@library" and "DSmtyOLA"
    And user clicks on "Users" link
    Then table should have following column names:
    | Actions   |
    | User ID   |
    | Full Name |
    | Email     |
    | Group     |
    | Status    |