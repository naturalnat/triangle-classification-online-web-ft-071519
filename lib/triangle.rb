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
      [a, b, c].each { |side| false if side <= 0 }
  end

  def kind

    # if (a + b > c) || (b + c > a) || (a + c > b)
  if triangle? == true
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
  end

  class TriangleError < StandardError
  end
end
