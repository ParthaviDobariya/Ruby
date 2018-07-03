def test
  puts "In the method"
  yield
  puts "Back to the method"
  yield
end
test {puts "In the block"}

puts "\nyield with parameter"
def test
   yield 5
   puts "In the method test"
   yield 100
end
test {|i| puts "In the block #{i}"}

# block call inside method if last argument of method contain & sign
def test(&block)
   block.call
end
test { puts "\nHello...!"}