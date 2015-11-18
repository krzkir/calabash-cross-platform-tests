require 'calabash-cucumber/ibase'

class PasswordChangeScreen < Calabash::IBase
  
  def trait
    "label marked:'CHANGE PASSWORD'"
  end

  def cancel_button
    "button id:'Button.back'"
  end

  def save_button
    "Button id:'Button.save'"
  end

  def current_password_field
    "TextField id:'TextField.current-password'"
  end

  def new_password_field
    "TextField id:'TextField.new-password'"
  end

  def repeat_password_field
    "TextField id:'TextField.re-enter-password'"
  end

  def tap_cancel_button
    wait_for_element_exists(cancel_button)
    touch(cancel_button)
  end

  def check_elements
    wait_for_elements_exist([cancel_button,save_button,current_password_field,new_password_field,repeat_password_field])
  end

end