class MenuScreen < Calabash::ABase

  def trait
   "TextView id:'account_label'"
  end

  def account_button
   "TextView id:'account_label'"
  end

  def tap_account_button
    tap_when_element_exists(account_button)
  end
  
end