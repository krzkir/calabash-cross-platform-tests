require 'calabash-cucumber/ibase'

class LoginScreen < Calabash::IBase

  def trait
    "label marked:'LOG IN'"
  end

  def login_button 
    "button marked:'Button.log-in'"
  end

  def cancel_button
    "button marked:'Button.cancel'"
  end

  def email_field
    "textField marked:'TextField.email'"
  end

  def password_field
    "textField marked:'TextField.password'"
  end

  def success_message
    "textView text:'Success!'"
  end

  def invalid_message
    "textView text:'Invalid email or password'"
  end

 
  def change_email(email)
    wait_for_element_exists(email_field)
    touch(email_field)
    fast_enter_text(email)
  end

  def change_password(password)
    wait_for_element_exists(password_field)
    touch(password_field)
    fast_enter_text(password)
  end  
  
  def tap_login_button
    wait_for_element_exists(login_button)
    touch(login_button)
  end
  
  def tap_cancel_button
    wait_for_element_exists(cancel_button)
    touch(cancel_button)
  end
  
  def tap_email_field
    wait_for_element_exists(email_field, $TIMEOUT)
    touch(email_field)
  end
  
  def tap_password_field
    wait_for_element_exists(password_field, $TIMEOUT)
    touch(password_field)
  end

  def wait_for_success_message
    wait_for_element_exists(success_message)
    wait_for_elements_do_not_exist(success_message)
  end
  
  def wait_for_invalid_message
    wait_for_element_exists(invalid_message)
    wait_for_elements_do_not_exist(invalid_message)
  end
  
  def login_with(email, pass)
    change_email(email)
    change_password(pass)
    tap_login_button
    wait_for_success_message
  end

  def invalid_login(email, pass)
    change_email(email)
    change_password(pass)
    tap_login_button
    wait_for_invalid_message
    tap_cancel_button
  end
  
end