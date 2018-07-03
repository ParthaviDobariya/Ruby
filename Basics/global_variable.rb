$global_variable = 12
class Global1
  def print_global                                          
    puts "Class1 : value of Global Variable is #$global_variable"
  end
end
class Global2
  def print_global  #overriding method
    puts "Class2 : value of Global Variable is #$global_variable"
  end
end
object1 = Global1.new
object1.print_global
object2 = Global2.new
object2.print_global
