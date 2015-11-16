 require 'json'
 require 'pp'

class Emulator

	def read_json
		@json = File.read('/Users/Shared/Jenkins/Desktop/leeo/mobile-ios/features/emulator/emulator/devices/device1.json')
    @obj = JSON.parse(@json)
	end

	def save_json
  	File.open("/Users/Shared/Jenkins/Desktop/leeo/mobile-ios/features/emulator/emulator/devices/device1.json","w") do |f|
      f.write(JSON.pretty_generate(@obj))
    end
	end

  def set_temperature(val)
  	read_json
  	@obj["state"]["temperature"]=val.to_i
  	save_json
  end

  def set_humidity(val)
  	read_json
  	@obj["state"]["humidity"]=val.to_i
  	save_json	
  end

  def activate_smoke_alarm
    read_json
    @obj["alarms"]["smoke"]["active"]=true
    save_json
  end

end