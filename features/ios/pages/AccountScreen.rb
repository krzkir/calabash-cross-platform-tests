require 'calabash-cucumber/ibase'

class AccountScreen < Calabash::IBase
  
  def trait
    "label marked:'ACCOUNT'"
  end

  def logout_button
    "button marked:'Button.log-out'"
  end

  def change_password_button
    "button marked:'Button.change-password"
  end

  def save_button
    "button marked:'Button.save'"
  end

  def cancel_button
    "button marked:'Button.cancel'"
  end

  def name_field
    "textField marked:'TextField.name'"
  end

  def email_field
    "textField marked:'TextField.email'"
  end  

  def phone_number_field
    "textField marked:'TextField.phone-number'"
  end

  def account_updated_message
    "textView text:'Your account has been updated!'"
  end

  def confirm_popup_title 
    "view:'_UIAlertControllerView' marked:'Are you sure?'"
  end

  def confirm_popup_text
    "label marked:'Your changes will not be saved."
  end
  
  def confirm_popup_cancel_button
    "* view:'_UIAlertControllerActionView' marked:'Cancel'"
  end
  
  def confirm_popup_ok_button
    "* view:'_UIAlertControllerActionView' marked:'OK'"
  end

  def tap_logout_button
    wait_for_element_exists(logout_button)
    touch(logout_button)
  end

  def tap_cancel_button
    wait_for_element_exists(cancel_button)
    touch(cancel_button)
  end

  def tap_save_button
    wait_for_element_exists(save_button)
    touch(save_button)
  end

  def wait_for_confirm_popup
    wait_for_elements_exist([confirm_popup_title, confirm_popup_text, confirm_popup_cancel_button, confirm_popup_ok_button])
  end

  def wait_for_success
    wait_for_element_exists(account_updated_message)
  end

  def tap_change_password_button
    wait_for_element_exists(change_password_button)
    touch(change_password_button)
  end

  def change_name
    if query(name_field,:text)[0]=="Te St"
      clear_text(name_field)
      touch(name_field)
      wait_for_keyboard
      keyboard_enter_text("Test Test")
    else
      clear_text(name_field)
      touch(name_field)
      wait_for_keyboard
      keyboard_enter_text("Te St")
    end
    tap_save_button
  end

  def change_phone_number
    if query(phone_number_field,:text)[0]=="8484545484"
      clear_text(phone_number_field)
      touch(phone_number_field)
      wait_for_keyboard
      keyboard_enter_text("8007006001")
    else
      clear_text(phone_number_field)
      touch(phone_number_field)
      wait_for_keyboard
      keyboard_enter_text("8484545484")
    end
    tap_save_button
  end

end