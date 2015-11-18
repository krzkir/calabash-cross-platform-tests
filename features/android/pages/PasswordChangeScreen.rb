class PasswordChangeScreen < Calabash::ABase

  def trait
    "TextView marked:'Change Password'"
  end

  def cancel_button
    "button id:'cancel_button'"
  end

  def save_button
  	"Button id:'save_button'"
  end

  def current_password_field
  	"EditText id:'current_password'"
  end

  def new_password_field
  	"EditText id:'new_password'"
  end

  def repeat_password_field
  	"EditText id:'repeat_new_password'"
  end

  def tap_cancel_button
    tap_when_element_exists(cancel_button)
  end
  
  def check_elements
  	wait_for_elements_exist([cancel_button,save_button,current_password_field,new_password_field,repeat_password_field])
  end

end
