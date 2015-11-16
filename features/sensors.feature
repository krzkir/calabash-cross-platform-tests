Feature: Checking data received from sensors

@sensor @correct
Scenario: Temperature reading from sensor is correct
  Given I set temperature to 17
  And I set humidity to 50
	Given I can log in
	Then I should see All Clear message
	And the temperature reading should equal 17
	Then I open drawer menu
  And I press My Account
  And I press Log Out
  Then I should see welcome screen

@sensor @correct
Scenario: Humidity reading from sensor is correct
  Given I set humidity to 50
	Given I can log in
	Then I should see All Clear message
	And the humidity reading should equal 50
	Then I open drawer menu
  And I press My Account
  And I press Log Out
  Then I should see welcome screen

@sensor @alert
Scenario: Low temperature alert
  Given I set temperature to 6
  Given I can log in
  Then I should see Low Temperature message
  And the temperature reading should equal 6
  Then I open drawer menu
  And I press My Account
  And I press Log Out
  Then I should see welcome screen

@sensor @alert 
Scenario: High temperature alert
  Given I set temperature to 37
  Given I can log in
  Then I should see High Temperature message
  And the temperature reading should equal 37
  Then I open drawer menu
  And I press My Account
  And I press Log Out
  Then I should see welcome screen

  @sensor @alert 
Scenario: Low humidity alert
  Given I set humidity to 10
  And I set temperature to 17
  Given I can log in
  Then I should see Low Humidity message
  And the humidity reading should equal 10
  Then I open drawer menu
  And I press My Account
  And I press Log Out
  Then I should see welcome screen

  @sensor @alert
Scenario: High humidity alert
  Given I set humidity to 90
	Given I can log in
	Then I should see High Humidity message
	And the humidity reading should equal 90
	Then I open drawer menu
  And I press My Account
  And I press Log Out
  Then I should see welcome screen

  @light
Scenario: Checking if color picker knob is in correct position when choosing Quick colors
  	Given I can log in
  	When I open colors menu
  	And I choose quick color number 1
  	Then I check knob position for color number 1
  	And I choose quick color number 2
  	Then I check knob position for color number 2
  	And I choose quick color number 3
  	Then I check knob position for color number 3
  	And I choose quick color number 4
  	Then I check knob position for color number 4
  	And I choose quick color number 5
  	Then I check knob position for color number 5
  	Then I save settings
		Then I open drawer menu
	  And I press My Account
	  And I press Log Out
	  Then I should see welcome screen

 @sensor @alert @smoke
Scenario: I can dismiss an active smoke alarm
    Given I activate smoke alarm
    Given I can log in
    Then I should see active alarm message
    Then I dismiss the alarm
    Then I should see All Clear message
    Then I open drawer menu
    And I press My Account
    And I press Log Out
    Then I should see welcome screen
