class HomeScreen < Calabash::ABase

  def trait
    "TextView marked:'menu_button'"
  end

  def menu_button
    "TextView marked:'menu_button'"
  end

  def color_menu_button
    "Button id:'light_control_button'"
  end

  def temp_reading
  	"TextView id:'temperature_reading'"  	
  end

	def status_message
		"TextView id:'device_message_status_message'"
	end

  def alert_status_message
    "TextView id:'device_alert_status_message'"
  end

	def humidity_reading
		"TextView id:'humidity_reading'"		
	end

  def empty_reading
    "TextView id:'temperature_reading' text:'--'"
  end

  def open_colors_menu
		tap_when_element_exists(color_menu_button) 
  end

  def open_drawer
    tap_when_element_exists(menu_button)
  end
  
  def status_ok
    wait_for_element_exists(status_message)
  	fail unless query(status_message,:text)[0]=="All Clear."
  end

  def status(range,sensor)
    wait_for_element_exists(alert_status_message)
    sleep 2
    fail unless query(alert_status_message,:text)[0]==range+" "+sensor
  end

  def sensor_value(sens,reading)
    if sens=='temperature'
      temperature(reading)
    else
      humidity(reading)
    end
  end

  def temperature(reading)
    wait_for_element_does_not_exist(empty_reading) 
    fail unless query(temp_reading,:text)[0]==reading.to_s   
  end

  def humidity(reading)
    wait_for_element_does_not_exist(empty_reading)
    fail unless query(humidity_reading,:text)[0]==reading.to_s   
  end


end