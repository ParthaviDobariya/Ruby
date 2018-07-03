class Number
	def initialize(a)
		@a = a
	end
  def +(c)
  	@a + c
  end
  def -@
  	-@a
  end
  def *(c)
  	@a * c
  end
end
number = Number.new(2)
puts "+ operator       : #{number + 10}"
puts "unary - operator : #{-number}"
puts "* operator       : #{number * 10}"