
class LoginScreen < Calabash::ABase

  def trait
    "textView marked:'Log In'"
  end

  def login_button 
    "button marked:'login_button'"
  end

  def cancel_button
    "button marked:'login_cancel_button'"
  end

  def email_field
    "editText marked:'login_email'"
  end

  def password_field
    "editText marked:'login_password'"
  end

  def success_message
    "textView text:'Success!'"
  end

  def invalid_message
    "textView text:'Invalid email or password'"
  end

  def change_email(email)
      enter_text(email_field, email)
  end

  def change_password(password)
      enter_text(password_field, password)
  end  
  
  def tap_login_button
    wait_for_element_exists(login_button)
    touch(login_button)
  end
  
  def tap_cancel_button
    wait_for_element_exists(cancel_button)
    touch(cancel_button)
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