class AlarmScreen < Calabash::ABase

  def trait
   dismiss_button
  end

  def dismiss_button
   "button id:'smoke_co_alarm_false_alarm_button'"
  end

  def dismiss_alarm
    tap_when_element_exists(dismiss_button)
  end
  
end