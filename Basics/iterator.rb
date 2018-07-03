# each
puts "\neach"
(0..5).each do |i|
  puts i
end

# collect
puts "\ncollect"
a = [1, 2, 3, 4, 5]
b = Array.new
b = a.collect
b.each {|i| puts i}