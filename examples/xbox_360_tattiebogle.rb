require 'artoo'

connection :joystick, :adaptor => :joystick
device :controller, :driver => :xbox360, :connection => :joystick, :interval => 0.1, :usb_driver => :tattiebogle

work do
  on controller, :joystick_0 => proc { |*value|
    puts "joystick 0 - x:#{value[1][:x]} y:#{value[1][:y]}"
  }
  on controller, :joystick_1 => proc { |*value|
    puts "joystick 1 - x:#{value[1][:x]} y:#{value[1][:y]}"
  }
  on controller, :trigger_lt => proc { |*value|
    puts "left trigger: #{value[1]}"
  }
  on controller, :trigger_rt => proc { |*value|
    puts "right trigger: #{value[1]}"
  }
  on controller, :button_a => proc { |*value|
    puts "ayyyy!"
  }
  on controller, :button_b => proc { |*value|
    puts "bee!"
  }
  on controller, :button_x => proc { |*value|
    puts "exxx!"
  }
  on controller, :button_y => proc { |*value|
    puts "why!"
  }
  on controller, :button_rb => proc { |*value|
    puts "Right Button down"
  }
  on controller, :button_up_rb => proc { |*value|
    puts "Right Button up"
  }
end
