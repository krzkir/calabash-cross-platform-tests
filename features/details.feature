Feature: Changing account details

Scenario: I can change my name
  Given I can log in
  Then I open drawer menu
  And I press My Account
  Then I change my name
  Then I should see update success message
  And I press My Account 
  And I press Log Out
  Then I should see welcome screen


Scenario: I can open password change form
  Given I can log in
  Then I open drawer menu
  And I press My Account
  And I press password change button
  Then I should see password change form
  And I press cancel
  And I press Log Out
  Then I should see welcome screen