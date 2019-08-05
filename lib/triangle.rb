class Triangle
  attr_accessor :a, :b, :c


  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def triangle?
    if (a + b > c) || (b + c > a) || (a + c > b)
      true
    else
      [a, b, c].each do |side|
        raise TriangleError if side <= 0
      end
  end

  def kind
    triangle?
    # if (a + b > c) || (b + c > a) || (a + c > b)
      # then
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
