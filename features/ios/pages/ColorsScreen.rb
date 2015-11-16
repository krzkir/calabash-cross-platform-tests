require 'calabash-cucumber/ibase'

class ColorsScreen < Calabash::IBase

  def trait
    color_knob
  end

  def quick_colors_button
    "ThreeCirclesView marked:'Button.quick-colors-palette'"
  end

  def done_button
    "button marked:'Button.done'"
  end

  def color_knob
    "all ISColorKnob"
  end

  def quick_color_button(nr)
    "button marked:'Button.quick-color-#{nr.to_i-1}'"
  end

  def save_settings
    touch(done_button)
    wait_for_elements_do_not_exist(trait)
  end 

  def open_quick_colors_menu
    wait_for_element_exists(quick_colors_button)
    touch(quick_colors_button)
  end

  def select_quick_color(nr)
    open_quick_colors_menu
    wait_for_elements_exist(quick_color_button(nr))
    touch(quick_color_button(nr))
  end

  def check_quick_color_position(nr)
    case nr.to_i
      when 1
        check_knob_position(164,235)
      when 2
        check_knob_position(351,235)
      when 3
        check_knob_position(257,73)
      when 4
        check_knob_position(70,73)
      when 5
        check_knob_position(70,397)
    end
  end

  def check_knob_position(x,y)
    wait_for_elements_exist(color_knob)
    ay = query(color_knob,:frame)[0]["Y"].round
    ax = query(color_knob,:frame)[0]["X"].round
    fail("x,y was = #{ax.to_s},#{ay.to_s} but expected x,y = #{x.to_s},#{y.to_s}") unless x == ax && y == ay 
  end

end  
