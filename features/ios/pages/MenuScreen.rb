require 'calabash-cucumber/ibase'

class MenuScreen < Calabash::IBase
  
  def trait
    "label marked:'My Account'"
  end

  def account_button
    "* marked:'My Account'"
  end

  def tap_account_button
    wait_for_element_exists(account_button)
    touch(account_button)
  end

end