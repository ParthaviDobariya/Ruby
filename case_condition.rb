# if..else statement
puts "if...else statement"
i = 1
if i > 2
  puts "i is greater than 2"
elsif i <= 2 and i != 0
  puts "i is 1"
else
  puts "number is less than 0"
end

# if modifier
puts "\nif modifier"
debug = 1
print "parthavi\n" if debug

# Unless statement
puts "\nUnless statement"
i = 1
unless i>=2
  puts "#{i} is less than 2"
 else
  puts "#{i} is greater than 2"
end

# unless modifier
puts "\nUnless Modifier"
var =  1
print "1 -- Value is set\n" if var == 1
print "2 -- Value is set\n" unless var <= 1
var = false
print "3 -- Value is set\n" unless var == true

# case statement
puts "\ncase statement"
age =  21
case age
	when 0 .. 2
	  puts "baby"
	when 3 .. 6
	  puts "little child"
	when 7 .. 12
	  puts "child"
	when 13 .. 18
	  puts "youth"
	else
	  puts "adult"
end