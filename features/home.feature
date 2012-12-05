Feature: Home page
  Scenario: Visiting the home page
    When I go to the home page
    Then I should see "Hello World!"
     And I should see "Click me!"

  @javascript
  Scenario: Clicking the button
    When I go to the home page
     And I press "Click me!"
    Then I should see "Clicked!"

  @javascript
  Scenario: Opening modal with form
     When I go to the home page
      And I press "Launch modal"
     Then I should see "Enter your email"
     When I fill in "Email" with "my.name@example.com"
     Then I should see "Email is valid."
