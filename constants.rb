class Constant
  VAR1 = 100
  VAR2 = 200
  def show
  	# VAR1 = 12   generate error dynamic constant assignment
    puts "Value of first Constant is #{VAR1}"
    puts "Value of second Constant is #{VAR2}"
  end
end
constant = Constant.new()
constant.show