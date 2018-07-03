# while loop
puts "While Loop"
i = 0
puts "Inside the loop i = "
while i < 5  do
  puts "#{i}"
  i += 1
end

# while modifier
puts "\nWhile modifier"
i = 0
begin
  puts("Inside the loop i = #{i}" )
  i += 1	
end while i < 5

# until loop
puts "\nuntil Loop"
i = 0
puts "Inside the loop i = "
until i > 5  do
  puts "#{i}"
  i += 1
end

# until modifier
puts "\nuntil modifier"
i = 0
begin
  puts("Inside the loop i = #{i}" )
  i += 1	
end until i < 5

# for loop
puts "\nFor Loop"
for i in 0 ... 5
  puts "#{i}"
end

(0...5).each do |i|
   puts "without for loop #{i}"
end

# break statement
puts "\nbreak statement"
for i in 0...5
  if i > 2 then
    break
  end
  puts "#{i} <= 2"
end

# next statement
puts "\nnext statement"
for i in 0...5
  if i < 2 then
    next
  end
  puts "#{i} >= 2"
end

# redo statement
# puts "\nredo statement"
# for i in 0...5
#   if i < 2 then
#     puts "Value is #{i}"
#     redo
#   end
# end

# retry statement
# puts "\nretry statement" #not working
# (0..5).each do |i|
#   puts "Value : #{i}"
#   retry if i > 2
# end