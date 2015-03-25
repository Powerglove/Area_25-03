class Shape
  def initialize(size_of_base, height, radius)
    @size_of_base = size of base
    @height = height
    @radius = radius
  end
end

class Triangle < Shape
  def initialize(size_of_base, height)
    @size_of_base = size_of_base
    @height = height
  end

  def area
    @size_of_base * @height / 2
  end

  def name
    "triangle"
  end
end

class Circle < Shape
  def initialize(radius)
    @radius = radius
  end

  def area
    @radius * @radius * Math::PI
  end

  def name
    "circle"
  end


end

class Square < Shape
  def initialize(size_of_base)
    @size_of_base = size_of_base
  end

  def area
     @size_of_base * @size_of_base
  end

  def name
    "square"
  end

end

puts "What shape do you want? (1 = triangle/ 2 = circle/ 3 = square)"
shape = gets
puts "You chose " + shape

shape = shape.to_i

if shape == 1 || shape == 3
  puts "What is the size of the base?"
  size_of_base = gets
  size_of_base = size_of_base.to_i
end


if shape == 1
  puts "What is the size of the height?"
  height = gets
  height = height.to_i
end

if shape == 2
  puts "What is the radius?"
  radius = gets
  radius = radius.to_i
end

if shape == 1
  shape_object = Triangle.new(size_of_base, height)
  puts "The area of your #{shape_object.name} is #{shape_object.area}"
end

if shape == 2
  shape_object = Circle.new(radius)
  puts "The area of your #{shape_object.name} is #{shape_object.area}"
end

if shape == 3
  shape_object = Square.new(size_of_base)
  puts "The area of your #{shape_object.name} is #{shape_object.area}"
end
