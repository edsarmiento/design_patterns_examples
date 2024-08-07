# frozen_string_literal: true

class Shape
  def draw
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class Circle < Shape
  def draw
    puts 'printing a circle'
  end
end

class Square < Shape
  def draw
    puts 'printing a square'
  end
end

class Rectangle < Shape
  def draw
    puts 'printing a rectangle'
  end
end

# FACTORY

class ShapeFactory
  def self.create_shape(shape_type)
    case shape_type.downcase
    when 'circle'
      Circle.new
    when 'square'
      Square.new
    when 'rectangle'
      Rectangle.new
    else
      raise "Unknown shape type: #{shape_type}"
    end
  end
end

# Example usage
shape1 = ShapeFactory.create_shape('circle')
shape1.draw

shape2 = ShapeFactory.create_shape('square')
shape2.draw

shape3 = ShapeFactory.create_shape('rectangle')
shape3.draw
