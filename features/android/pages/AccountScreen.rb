class AccountScreen < Calabash::ABase

  def trait
    "button marked:'log_out_button'"
  end

  def logout_button
    "button marked:'log_out_button'"
  end

  def save_button
    "button id:'save_button'"
  end

  def cancel_button
    "button id:'cancel_button'"
  end

  def change_password_button
    "TextView marked:'Change Password'"
  end

  def name_field
  	"EditText id:'username_info'"
  end

  def phone_number_field
    "EditText id:'phone_number_info'"
  end

  def account_updated_message
    "TextView text:'Your account has been updated!'"
  end

  def tap_logout_button
    tap_when_element_exists(logout_button)
  end

  def tap_change_password_button
  	tap_when_element_exists(change_password_button)
  end

  def tap_save_button
  	tap_when_element_exists(save_button)
  end

  def wait_for_success
    wait_for_element_exists(account_updated_message)
  end

  def change_name
    if (query(name_field,:text)[0])=="Te St"
      clear_text_in(name_field)
      enter_text(name_field,"Test Test")
    else
      clear_text_in(name_field)     
      enter_text(name_field,"Te St")
    end
    tap_save_button
  end
  
  def change_phone_number
    if (query(phone_number_field,:text)[0])=="8484545484"
      clear_text_in(phone_number_field)
      enter_text(phone_number_field,"8007006001")
    else
      clear_text_in(phone_number_field)     
      enter_text(phone_number_field,"8484545484")
    end
    tap_save_button
  end
  
end