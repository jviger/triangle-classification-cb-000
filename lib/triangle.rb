class Triangle
  # write code here
  
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind
    if [side_1, side_2, side_3].any? { |x| x <= 0} || side_1 + side_2 < side_3 || side_1 + side_3 < side_2 || side_2 + side 3 < side_1
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
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
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end

  
end
