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
end

Given /^I can log in$/ do
  @welcome_screen=page(WelcomeScreen).await
  @welcome_screen.tap_login_button
  @login_page=page(LoginScreen).await
  @login_page.login_with('test@te.st','test1234')
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


