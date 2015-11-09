
class WelcomeScreen < Calabash::ABase

  def trait
    "imageView marked:'company_logo'"
  end

  def login_button
    "button marked:'welcome_login_button'"
  end

  def tap_login_button
    wait_for_element_exists(login_button)
    touch(login_button)
  end
  
end