class MenuScreen < Calabash::ABase

  def trait
   "TextView id:'account_label'"
  end

  def account_button
   "TextView id:'account_label'"
  end

  def residence_button
  	"TextView id:'label' text:'Home'"
  end

  def tap_account_button
    tap_when_element_exists(account_button)
  end
  
  def tap_residence_button
  	tap_when_element_exists(residence_button)
  end

end
