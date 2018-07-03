module Name
  def name(name)
  	puts "#{name}"
  end
end
class Sum
  def initialize(a,b)
  	@a, @b = a, b
  end
  def sum
  	return @a + @b
  end
end
class PrintSum < Sum
	include Name
	def sum    #method overriding
	  puts "Addition = #{@a + @b}"
	end
	def print_sum
		puts "sum = #{sum}"
	end
end
sum_1 = PrintSum.new(2, 10)
sum_1.sum
sum_1.name("Parthavi")
# sum_1.print_sum