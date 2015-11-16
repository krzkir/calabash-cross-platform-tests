require 'calabash-cucumber/ibase'

class AlarmScreen < Calabash::IBase
  
  def trait
    dismiss_button
  end

  def dismiss_button
    "Button id:'Modal.Button.dismiss'"
  end

  def false_alarm
  	"UIButton marked:'Not a smoke alarm'"
  end

  def dismiss_alarm
    wait_for_element_exists(dismiss_button)
    touch(dismiss_button)
    wait_for_element_exists(false_alarm)
    sleep 3
    touch(false_alarm)
    wait_for_element_does_not_exist(false_alarm)
  end

end