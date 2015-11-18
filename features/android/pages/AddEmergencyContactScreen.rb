class AddEmergencyContactScreen < Calabash::ABase

	def trait
		"TextView id:'add_contact_title'"
	end

	def save_button
		"Button id:'add_contact_save_button'"
	end

	def contact_name
		"EditText id:'add_contact_name'"
	end

	def contact_email
		"EditText id:'add_contact_email'"
	end

	def contact_mobile_number
		"EditText id:'add_contact_mobile_number'"
	end

  def success_message
    "TextView id:'message' text:'Your contact has been added!'"
  end

  def tap_save_button
  	tap_when_element_exists(save_button)
  end

  def wait_for_success_message
    wait_for_element_exists(success_message)
    wait_for_elements_do_not_exist(success_message)
  end

  def change_name(name)
  	enter_text(contact_name,name)
  end

  def change_email(email)
  	enter_text(contact_email,email)
  end

  def change_number(number)
  	enter_text(contact_mobile_number,number)
  end

  def add_contact(name,email,number)
  	change_name(name)
  	change_email(email)
  	change_number(number)
  	touch(trait)
  	tap_save_button
  	wait_for_success_message
  end

end
