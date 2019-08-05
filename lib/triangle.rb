class Triangle
  attr_accessor :a, :b, :c


  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

def kind
  real_triangle = (a + b > c) || (b + c > a) || (a + c > b)

  if a <= 0 || b <= 0 || c <= 0 ||
        raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end

 end



  # def real_triangle
  #   if (a + b > c) || (b + c > a) || (a + c > b)
  #     true
  #   elsif a <= 0 || b <= 0 || c <= 0
  #         raise TriangleError
  #       end
  #       end
  #   end

  class TriangleError < StandardError
  end

end
