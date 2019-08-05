class Triangle
  attr_accessor :a, :b, :c


  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a == b && b == c
      :isosceles
    elsif a == b || b == c || a == c
      :equilateral
    else
      :scalene
  end

  class TriangleError < StandardError
  end
end
