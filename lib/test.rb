
  class Triangle
    # write code here
    attr_reader :len1, :len2, :len3
    def initiliaze(len1,len2,len3)
      @len1 = len1
      @len2 = len2
      @len3 = len3
    end
    # kind of triangle
    def
      valid_triangle
      if len1 == len2 && len2 == len3
        :equilateral
      elsif len1 == len2 || len2 == len3 || len1 == len3
        :isosceles
      else
        :scalene
      end
    end
    def sides_greater_than_zero?
      [len1, len2, len3].all?(&:positive?)
    end
    def valid_triangle_inequality?
      len1 + len2 > len3 && len1 + len2 > len3 && len2 + len3 > len1
    end
    def valid_triangle
      raise TriangleError unless sides_greater_than_zero? && valid_triangle_inequality?
    end
  
    class TriangleError < StandardError
    end
  
  end