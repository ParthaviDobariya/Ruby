# without retry
begin
  file = open("file3.txt")
  if file
    puts "File is opened"
  end
rescue
    file = "File not found"
end
print file, "\n"

# with retry
puts "\nwith retry,ensure,else statement"   #without raise not work
begin
  print "enter first value : "
  a = gets.to_i
  print "enter second value : "
  b = gets.to_i
  if b > 0
  	puts "#{a}/#{b} = #{a/b}"
  else
  	raise 'exception'
  end
rescue
  puts "\n** denominator must be greater than zero **"
  retry
else
  puts "\nSuccessfully dividion is done.."
ensure
  puts "\nensure statement"
end

# with throw and catch
puts "\nwith throw and catch statement"   #without raise not work
def divide
  print "enter first value : "
  a = gets.to_i
  print "enter second value : "
  b = gets.to_i
  if b == 0
  	puts "\n** denominator must be greater than zero **"
    throw :DividebyZero
  else 
    puts "#{a}/#{b} = #{a/b}"
  end
end
catch :DividebyZero do
  divide
end