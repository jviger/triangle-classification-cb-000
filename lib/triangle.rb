class Triangle
  # write code here
  
  
  def initialize(side_1, side_2, side_3)
    
    
  end
  
  def kind
    
    if side_1 == side_2 == side_3
      :equilateral
    else if side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      :isocelese
    else 
      :scalene
    end
  
end
