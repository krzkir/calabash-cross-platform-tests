class EmergencyContactsScreen < Calabash::ABase

  def trait
   "Button id:'add_leeo_to_your_caller_id_button'"
  end

  def add_contact_button
    "Button id:'add_an_emergency_contact_button'"
  end
  
  def cancel_button
    "TextView id:'cancel_back_arrow'"
  end

  def edit_button
    "Button id:'edit_button'"
  end

  def tap_add_contact
    tap_when_element_exists(add_contact_button)
  end

  def tap_cancel_button
    tap_when_element_exists(cancel_button)
  end

  def tap_edit_button
    tap_when_element_exists(edit_button)
  end



end


