class Triangle
  attr_accessor :a, :b, :c


  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (a + b > c) || (b + c > a) || (a + c > b)
      
      then
        if a == b && b == c
        :isosceles
        elsif a == b || b == c || a == c
        :equilateral
        else
        :scalene
        end

    elsif a < 0 || b < 0 || c < 0 
      
      begin 
        raise TriangleError
      rescue TriangleError 
      end
    end
  end
  
  class TriangleError < StandardError
  end
end
