class ResidenceSettingsScreen < Calabash::ABase

  def trait
   "Button id:'delete_residence_button'"
  end

  def cancel_button
    "TextView id:'cancel_down_arrow'"
  end

  def emergency_contacts_button
    "TextView id:'emergency_contacts_label'"
  end

  def tap_emergency_contacts
    tap_when_element_exists(emergency_contacts_button)
  end

  def tap_cancel_button
    tap_when_element_exists(cancel_button)
  end
  
end
