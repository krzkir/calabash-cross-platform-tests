class ColorsScreen < Calabash::ABase

	def trait
		color_knob
	end

	def color_knob
		"all View id:'color_picker_knob'"
	end

	def quick_colors_button
    "ImageButton id:'colors_button'"
  end

  def done_button
    "button id:'done_button'"
  end

  def quick_color_button(nr)
  	"button index:#{(nr.to_i)-1}"
  end

  def save_settings
    tap_when_element_exists(done_button)
    wait_for_elements_do_not_exist(trait)
  end 

  def open_quick_colors_menu
    tap_when_element_exists(quick_colors_button)
  end

  def select_quick_color(nr)
    	open_quick_colors_menu
	    tap_when_element_exists(quick_color_button(nr))
  end

  def check_quick_color_position(nr)
    case nr.to_i
      when 1
        check_knob_position(213,342)
      when 2
        check_knob_position(453,342)
      when 3
        check_knob_position(333,134)
      when 4
        check_knob_position(93,134)
      when 5
        check_knob_position(93,549)
    end
  end

  def check_knob_position(x,y)
    wait_for_elements_exist(color_knob)
    ay = query(color_knob)[0]["rect"]["y"].round
    ax = query(color_knob)[0]["rect"]["x"].round
    fail("x,y was = #{ax.to_s},#{ay.to_s} but expected x,y = #{x.to_s},#{y.to_s}") unless x == ax && y == ay 
  end
end