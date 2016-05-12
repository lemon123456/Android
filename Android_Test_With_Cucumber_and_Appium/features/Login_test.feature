Feature: Login test

  Scenario Outline: Login with valid information

    Given I login primero with "<username>" and "<password>"
    Then I should see "No Record Found" in the page

    Examples:
      | username | password |
      | primero  | qu01n23! |
