# frozen_string_literal: true

# Car Deffinition
class Car
  attr_accessor :wheels, :doors

  def initialize
    @wheels = nil
    @doors = nil
  end

  def show
    puts "car with #{@doors} doors and a #{@wheels} weel"
  end
end

# Car builder interface
class CarBuilder
  def build_weels
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def build_doors
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Specific Car Builders
class BasicCarBuilder < CarBuilder
  def initialize
    @car = Car.new
  end

  def build_weels
    @car.wheels = 'simple'
  end

  def build_doors
    @car.doors = 'simple'
  end

  def get_result
    @car
  end
end

class LuxuryCarBuilder < CarBuilder
  def initialize
    @car = Car.new
  end

  def build_weels
    @car.wheels = 'luxe'
  end

  def build_doors
    @car.doors = 'luxe'
  end

  def get_result
    @car
  end
end

# use of the builders to build different types of cars
class CarDirector
  def initialize(builder)
    @builder = builder
  end

  def construct
    @builder.build_weels
    @builder.build_doors
  end

  def get_car
    @builder.get_result
  end
end

basic_builder = BasicCarBuilder.new
director = CarDirector.new(basic_builder)
director.construct
simple_car = director.get_car
simple_car.show

luxury_builder = LuxuryCarBuilder.new
director = CarDirector.new(luxury_builder)
director.construct
simple_car = director.get_car
simple_car.show
