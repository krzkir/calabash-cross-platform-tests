Feature: Changing account details

@invalid
Scenario: I cannot login with incorrect data
  Given I login with incorrect data
  Then I should see welcome screen

@login
Scenario: I can login with correct data
  Given I can log in
  Then I open drawer menu
  And I press My Account
  And I press Log Out
  Then I should see welcome screen

@password @login
Scenario: I can open password change form
  Given I can log in
  Then I open drawer menu
  And I press My Account
  And I press password change button
  Then I should see password change form
  And I press cancel
  And I press Log Out
  Then I should see welcome screen

@edit @login
Scenario: I can change my name
  Given I can log in
  Then I open drawer menu
  And I press My Account
  Then I change my name
  Then I should see update success message
  And I press My Account 
  And I press Log Out
  Then I should see welcome screen

@edit @login
Scenario: I can change my phone number
  Given I can log in
  Then I open drawer menu
  And I press My Account
  Then I change my phone number
  Then I should see update success message
  And I press My Account 
  And I press Log Out
  Then I should see welcome screen

