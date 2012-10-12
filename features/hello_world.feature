Feature: Home page
  Scenario: Visiting the home page
    When I go to the home page
    Then I should see "Hello World!"
     And I should see "Click me!"

  @javascript
  Scenario: Clicking the button
    Given I go to the home page
     When I press "Click me!"
     Then I should see "Clicked!"
