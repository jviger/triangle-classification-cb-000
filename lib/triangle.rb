class Triangle
  # write code here
  
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind
    if [side_1, side_2, side_3].any? { |x| x <= 0} || side_1 + side_2 <= side_3 || side_1 + side_3 <= side_2 || side_2 + side_3 <= side_1
     
      raise TriangleError
    elsif side_1 == side_2  && side_1 == side_3
        :equilateral
      elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
        :isosceles
      else 
        :scalene
      end
  end
  
  class TriangleError < StandardError
    def message 
      "Your sides violate the rules of a triangle!"
    end
  end

  
end
