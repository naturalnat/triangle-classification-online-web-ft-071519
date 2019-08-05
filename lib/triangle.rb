class Triangle
  attr_accessor :a, :b, :c


  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    [a, b, c].each do |side|
      if side <= 0
        raise TriangleError
    real_triangle = (a + b > c) || (b + c > a) || (a + c > b)

      then
        if a == b && b == c
        :equilateral
        elsif a == b || b == c || a == c
        :isosceles
        else
        :scalene
        end
    end
  end

  class TriangleError < StandardError
  end
end
