class Triangle

	attr_reader :side_one, :side_two, :side_three

	def initialize(side_one, side_two, side_three)
		@side_one = side_one
		@side_two = side_two
		@side_three = side_three
	end

	def kind
    if (side_one + side_two)>side_three && (side_two + side_three)>side_one && (side_one + side_three)>side_two && side_three > 0 
     	if @side_one == @side_two && @side_two == @side_three
      	 :equilateral
     	elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
      	 :isosceles
     	else
      	 :scalene
    	end
    else
    	raise TriangleError
    end
	end

end

class TriangleError < StandardError
end

