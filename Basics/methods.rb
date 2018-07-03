def test(p1 = "Ruby", p2 = "Perl")
  puts "The programming language is #{p1}"
  puts "The programming language is #{p2}"
end
test "C", "C++"
puts "\ndefault parameter value :"
test

# return statement
puts "\nwithout return statement"
def test
  i = 100
  j = 200
  k = 300
end
puts test

puts "\nreturn statement"
def test
  i = 100
  j = 200
  k = 300
  return i,j,k
end
puts test

# number of parameters
def sample (*test)
  puts "\nThe number of parameters is #{test.length}"
  for i in 0...test.length
    puts "#{i+1}. #{test[i]}"
  end
end
sample "Parthavi", "21", "F"
sample "Mac", "36", "M", "MCA"

# class method
puts "\nClass method"
class Information
  def Name
    puts "Parthavi"
  end
  def Information.Address
    puts "Katargam"
  end
end
information = Information.new
information.Name
Information.Address

# alias statement
puts "\nalias statement"
class Fan
  def on
    puts "The fan is on"
  end
  alias :start :on
end
m = Fan.new
m.start # same as m.on

# undef statement
# undef on