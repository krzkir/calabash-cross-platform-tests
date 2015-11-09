require 'calabash-cucumber/ibase'

class PasswordChangeScreen < Calabash::IBase
  
  def trait
    "* marked:'CHANGE PASSWORD'"
  end

  def cancel_button
    "button id:'Button.back'"
  end

  def tap_cancel_button
    wait_for_element_exists(cancel_button)
    touch(cancel_button)
  end

end