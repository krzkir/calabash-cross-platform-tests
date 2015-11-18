require 'calabash-cucumber/ibase'

class HomeScreen < Calabash::IBase
  
  def trait
    "* marked:'Drawer menu'"
  end

  def menu_button
    "* marked:'Drawer menu'"
  end

  def color_menu_button
    "Button id:'Button.light-settings'"
  end

  def temp_reading
    "label id:'Label.temperature-value'"   
  end

  def status_message_ok
    "label text:'All Clear.'"
  end

  def status_message_low_temp
    "label text:'Low Temperature'"
  end

  def humidity_reading
    "label id:'Label.humidity-value'"    
  end

  def empty_reading
    "label text:'--'"
  end

  def open_drawer
  	wait_for_element_exists(menu_button)
    touch(menu_button)
  end

  def open_colors_menu
    wait_for_element_exists(color_menu_button)
    touch(color_menu_button)    
  end

  def status_ok
    fail unless query("label",:text)[0]=="All Clear."
  end

  def status(range,sensor)
    fail("Wrong message displayed") unless query("label",:text)[0]==range+" "+sensor
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
    fail("wrong reading") unless query(temp_reading,:text)[0]==reading.to_s   
  end

  def humidity(reading)
    wait_for_element_does_not_exist(empty_reading)
    fail("wrong reading") unless query(humidity_reading,:text)[0]==reading.to_s   
  end



end