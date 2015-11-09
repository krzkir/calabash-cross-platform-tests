Feature: Login on IOS and Android

Scenario: I cannot login with incorrect data
  Given I login with incorrect data
  Then I should see welcome screen

Scenario: I can login with correct data
  Given I can log in
  Then I open drawer menu
  And I press My Account
  And I press Log Out
  Then I should see welcome screen

