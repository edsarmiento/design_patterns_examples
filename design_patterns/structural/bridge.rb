# frozen_string_literal: true

# 1 .- Define the Implementation Interface
class Device
  def on
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def off
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def set_volume(volume)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# 2 .- Concrete implementation for a TV and Radio
class TV < Device
  def on
    puts 'TV is ON'
  end

  def off
    puts 'TV is OFF'
  end

  def set_volume(volume)
    puts "TV volume set to #{volume}"
  end
end

class Radio < Device
  def on
    puts 'Radio is ON'
  end

  def off
    puts 'Radio is OFF'
  end

  def set_volume(volume)
    puts "Radio volume set to #{volume}"
  end
end

# 3 .- Define the Abstraction Interface

# This is the abstraction interface for remote controls
class RemoteControl
  def initialize(device)
    @device = device
  end

  def turn_on
    @device.on
  end

  def turn_off
    @device.off
  end
end

# 4 .- Implement Refined Abstraction
class AdvancedRemoteControl < RemoteControl
  def mute
    @device.set_volume(0)
    puts 'Device muted'
  end
end

# 5 .- Usage
tv = TV.new
remote = RemoteControl.new(tv)
remote.turn_on
remote.turn_off
# remote.mute

radio = Radio.new
advanced_remote = AdvancedRemoteControl.new(radio)
advanced_remote.turn_on
advanced_remote.mute
advanced_remote.turn_off
