class PasswordChangeScreen < Calabash::ABase

  def trait
    "TextView marked:'Change Password'"
  end

  def cancel_button
    "button id:'cancel_button'"
  end

  def tap_cancel_button
    tap_when_element_exists(cancel_button)
  end
  
end