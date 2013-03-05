Feature: Subdomains

  Scenario: Clicking on subdomain link
    Given I go to the home page
     When I click on "Go to subdomain"
     Then I should be on subdomain versative

  @javascript
  Scenario: Clicking on subdomain link
    Given I go to the home page
     When I click on "Go to subdomain"
     Then I should be on subdomain versative

  Scenario: Visiting subdomain page
     When I go to the subdomain page
     Then I should see "Welcome on subdomain!"
      And I should see "You are on domain: versative"
      And I should be on subdomain versative

  @javascript
  Scenario: Visiting subdomain page
     When I go to the subdomain page
     Then I should see "Welcome on subdomain!"
      And I should see "You are on domain: versative"
      And I should be on subdomain versative
