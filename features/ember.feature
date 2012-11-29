Feature: Home page with EmberJS app

  @javascript
  Scenario: Clicking the button with Ember action
    Given I go to the home page
     When I press "Get time"
     Then I should see "Time is:"

  @javascript
    Scenario: Clicking the button with AJAX request
      Given I go to the home page
       When I press "Get data"
       Then I should see "Sleep time:"
       Then I should see "Text:"
       Then I should see "Welcome in the world of tomorrow!"
