And /^I press My Account$/ do
  @menu_screen=page(MenuScreen).await
  @menu_screen.tap_account_button
end

And /^I press Log Out$/ do
  @account_screen=page(AccountScreen).await
  @account_screen.tap_logout_button
end

And /^I press cancel$/ do
  @password_screen.tap_cancel_button
end

Then /^I should see welcome screen$/ do
  @welcome_screen=page(WelcomeScreen).await
end

Then /^I should see password change form$/ do
  @password_screen=page(PasswordChangeScreen).await
  @password_screen.check_elements
end

Then /^I should see All Clear message$/ do
  @home_screen=page(HomeScreen).await
  @home_screen.status_ok
end

Then /^I should see (Low|High) (Temperature|Humidity) message$/ do |range,sensor|
  @home_screen=page(HomeScreen).await
  @home_screen.status(range,sensor)
end

Then /^the (temperature|humidity) reading should equal (\d+)$/ do |sens,reading|
  @home_screen=page(HomeScreen).await
  @home_screen.sensor_value(sens,reading)
end


Given /^I can log in$/ do
  @welcome_screen=page(WelcomeScreen).await
  @welcome_screen.tap_login_button
  @login_page=page(LoginScreen).await
  @login_page.login_with('test2@te.st','test1234')
end

Given /^I login with incorrect data$/ do
  @welcome_screen=page(WelcomeScreen).await
  @welcome_screen.tap_login_button
  @login_page=page(LoginScreen).await
  @login_page.invalid_login('test@test.te','test1234')
end

Then /^I open drawer menu$/ do
  @home_screen=page(HomeScreen).await  
  @home_screen.open_drawer
end

Then /^I open colors menu$/ do
  @home_screen=page(HomeScreen).await  
  @home_screen.open_colors_menu
end

Then /^I change my name$/ do
  @account_screen=page(AccountScreen).await
  @account_screen.change_name
end

Then /^I change my phone number$/ do
  @account_screen=page(AccountScreen).await
  @account_screen.change_phone_number
end

Then /^I press password change button$/ do
  @account_screen=page(AccountScreen).await
  @account_screen.tap_change_password_button
end

Then /^I press save$/  do
  @account_screen.tap_save_button
end

Then /^I should see update success message$/  do
  @account_screen.wait_for_success
end

When /^I choose quick color number (\d+)$/  do |nr|
  @colors_screen=page(ColorsScreen).await
  @colors_screen.select_quick_color(nr)
end

Then /^I check knob position for color number (\d+)$/  do |nr|
  @colors_screen=page(ColorsScreen).await  
  @colors_screen.check_quick_color_position(nr)
end

Then /^I save settings$/ do
  @colors_screen.save_settings
end

Given /^I set temperature to (\d+)$/ do |val|
  @emulator=Emulator.new
  @emulator.set_temperature(val)
end

Given /^I set humidity to (\d+)$/ do |val|
  @emulator=Emulator.new
  @emulator.set_humidity(val)
end

When /^I activate smoke alarm$/ do
  @emulator=Emulator.new
  @emulator.activate_smoke_alarm
end

When /^I activate co alarm$/ do
  @emulator=Emulator.new
  @emulator.activate_co_alarm
end

Then /^I should see active alarm message$/ do
  @alarm_screen=page(AlarmScreen).await
end

Then /^I dismiss the alarm$/ do
  @alarm_screen.dismiss_alarm
end

And /^I press residence label$/ do
  @menu_screen=page(MenuScreen).await
  @menu_screen.tap_residence_button
end

Then /^I press emergency contacts$/ do
  @residence_screen=page(ResidenceSettingsScreen).await
  @residence_screen.tap_emergency_contacts
end

And /^I add five emergency contacts$/ do
  5.times do |count|
    @emergency_contacts_screen=page(EmergencyContactsScreen).await
    @emergency_contacts_screen.tap_add_contact
    @add_contact_screen=page(AddEmergencyContactScreen).await
    @add_contact_screen.add_contact("test#{(count+1).to_s}","test#{(count+1).to_s}@te.st","800700600#{(count+1).to_s}")
  end
end