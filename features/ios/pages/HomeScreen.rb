require 'calabash-cucumber/ibase'

class HomeScreen < Calabash::IBase
  
  def trait
    "* marked:'Drawer menu'"
  end

  def menu_button
    "* marked:'Drawer menu'"
  end

  def open_drawer
  	wait_for_element_exists(menu_button)
    touch(menu_button)
  end

end