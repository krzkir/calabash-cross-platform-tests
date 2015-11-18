require 'calabash-cucumber/ibase'

class WelcomeScreen < Calabash::IBase
  
  def trait
    "view:'UIImageView' marked:'LeeoLogo'"
  end

  def login_button
    "button marked:'Button.log-in'"
  end

  def tap_login_button
  	wait_for_element_exists(login_button)
    touch(login_button)
  end

end