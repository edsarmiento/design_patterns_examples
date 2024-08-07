# frozen_string_literal: true

class Shape
  attr_accessor :x, :y, :color

  def initialize(x, y, color)
    @color = color
    @x = x
    @y = y
  end

  def clone
    # Create a shallow copy of the object
    dup
  end

  def show
    puts "Shape with coordinates (#{@x}, #{@y}) and color #{@color}."
  end
end

class Circle < Shape
  attr_accessor :radius

  def initialize(x, y, color, radius)
    # send to shape the parent class
    super(x, y, color)
    @radius = radius
  end

  def clone
    # Create a shallow copy of the object
    copy = super
    copy.radius = @radius
    copy
  end

  def show
    puts "Circle with coordinates (#{@x}, #{@y}), color #{@color}, and radius #{@radius}."
  end
end

class Rectangle < Shape
  attr_accessor :width, :height

  def initialize(x, y, color, width, height)
    # send to shape the parent class
    super(x, y, color)
    @width = width
    @height = height
  end

  def clone
    # Create a shallow copy of the object
    copy = super
    copy.width = @width
    copy.height = @height
    copy
  end

  def show
    puts "Rectangle with coordinates (#{@x}, #{@y}), color #{@color}, width #{@width}, and height #{@height}."
  end
end

# Create initial objects
circle = Circle.new(10, 20, 'red', 15)
rectangle = Rectangle.new(5, 10, 'blue', 30, 40)

# Clone the objects
circle_clone = circle.clone
rectangle_clone = rectangle.clone

# Modify the cloned objects
circle_clone.color = 'green'
rectangle_clone.width = 35

# Show the details of original and cloned objects
puts 'Original Circle:'
circle.show

puts 'Cloned Circle:'
circle_clone.show

puts 'Original Rectangle:'
rectangle.show

puts 'Cloned Rectangle:'
rectangle_clone.show
