class HomeScreen < Calabash::ABase

  def trait
    "TextView marked:'menu_button'"
  end

  def menu_button
    "TextView marked:'menu_button'"
  end

  def open_drawer
    tap_when_element_exists(menu_button)
  end
  
end