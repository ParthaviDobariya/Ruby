# array defining method
name = Array.new
name = Array.new(10)
puts "length 			   : #{name.length}"
puts "size   			   : #{name.size}"
puts "count  			   : #{name.count}"

name = Array.new(4,"parthavi")
puts "\n                     #{name}"
number = Array.new(5) { |e| e = e * 3 }
puts "						 #{number}"
number = Array.[](1, 2, 3, 4, 5)
puts "						 #{number}"
number = Array[6, 7, 8, 9, 10]
puts "						 #{number}"
number = Array.new(4) { Hash.new }
puts "						 #{number}"
matrix = Array.new(3,0) { Array.new(3,0) }
puts "						 #{matrix}"

array = [ "Parthavi", 12, 3.14, "This is example of array", "last element", ]
puts "\n"
array.each do |i|
  puts i
end
# access element
puts "\narray[0]           	: #{array[0]}"
puts "at(3)                	: #{array.at(3)}"
puts "at(array.length - 1) 	: #{array.at(array.length - 1)}"
puts "fetch(2)             	: #{array.fetch(2)}"
puts "first                	: #{array.first}"
puts "last                 	: #{array.last}"
puts "take(3)              	: #{array.take(3)}"
puts "drop(3)              	: #{array.drop(3)}"
puts ".empty?              	: #{array.empty?}"
puts ".include?('123')     	: #{array.include?('123')}"
# add element
number = Array(1...5)
puts "\n.push        		: #{number.push(5)}"
puts "<<             		: #{number << 6}" 
# unshift - add element at starting
puts ".unshift       		: #{number.unshift(0)}"
puts "insert         		: #{number.insert(1,"parthavi")}"  
# remove element
number.pop
puts "\npop          		: #{number}"
number.shift
puts "shift          		: #{number}"
number.delete_at(0)
puts "delete_at(0)   		: #{number}"
number.delete(2)
puts "delete(2)      		: #{number}"
number << nil 
puts "\nwith nil     		: #{number}"
# compact - remove nil values
puts "compact!       		: #{number.compact!}"
number << 1 
puts "\nduplicate    		: #{number}"
puts "unique!        		: #{number.uniq!}"
# each
puts "\neach         		: #{number.each {|i| print i *= 2 , " "}}"
puts "\neach_index   		: #{number.each_index {|i| print i , "--"}}"
puts "\nreverse_each 		: #{number.reverse_each {|i| print i , " "}}"
# map - create new array with different value
puts "\nmap          		: #{number.map {|i| i *= 2 }}"

# select item
number = Array(1..5)
puts "\nselect       		: #{number.select {|i| i>3}}"
puts "reject         		: #{number.reject {|i| i<3}}"
puts "drop_while     		: #{number.drop_while {|i| i<3}}"
puts "delete_if      		: #{number.delete_if {|i| i>3}}"
number = Array(1..5)
puts "keep_if        		: #{number.keep_if {|i| i>3}}"

# gotchas
array = Array.new(2,Hash.new)
puts "\n               		  #{array}"
array[0]['name']="parthavi"
puts "                 		  #{array}"
array[1]['surname']="Dobariya"
puts "                 		  #{array}"
# try_convert - convert object to array
puts "try_convert    		: #{Array.try_convert(["parthavi"])}"

# instance method
array_1 = Array(1..3)
array_2 = Array(4..6)
puts "\narray_1             : #{array_1}"
puts "array_2               : #{array_2}"
puts "array_1 & array_2     : #{array_1 & array_2}"
puts "array_1*2             : #{array_1 * 2}"
puts "array_1+array_2       : #{array_1 + array_2}"
puts "array_1-array_2       : #{array_1 - array_2}"
puts "array_1<<4            : #{array_1 << 4}"
puts "array_1<=>array_2     : #{array_1 <=> array_2}"
puts "array_1==array_2      : #{array_1 == array_2}"
# slice
puts "array_1[0]+array_2[1] : #{array_1[0] + array_2[1]}"

a = Array.new
a[4]="p"
puts "\n                      #{a}"
a[0,3]=['a','b','c']
puts "                        #{a}"
a[0,2] = "?"
puts "                        #{a}"

puts "array_2.any?(4)       : #{array_2.any?{|i| i < 4}}"
array_1.pop
array = [array_1 , array_2]
puts "assoc(4)              : #{array.assoc(4)}"
puts "rassoc(4)             : #{array.assoc(4)}"
puts "\nbsearch             : #{array_2.bsearch { |i| i > 4 }}"
puts "\nclear               : #{array.clear}"
puts "collect               : #{array_2.collect {|i| i + 1 }}"
array = array_1.concat(array_2)
puts "concat                : #{array}"
puts "	                      #{array_2.cycle(2) { |x| puts x }}"
puts "\ncombination         : #{array_2.combination(1).to_a}"
puts "permutation           : #{array_2.permutation(1).to_a}"
puts "repeated_combination  : #{array_2.repeated_combination(1).to_a}"
puts "repeated_permutation  : #{array_2.repeated_permutation(1).to_a}"
puts "\nfill                : #{array_2.fill("*")}"
puts "find_index            : #{array_1.find_index(2)}"
array = [array_1,array_2]
puts "\nwithout flatten     : #{array}"
puts "with flatten          : #{array.flatten}"
puts "with flatten!         : #{array.flatten!}"
puts "\nhash                : #{array_1.hash}"
puts "\nindex               : #{array.index(2)}"
puts "\njoin                : #{array.join("-")}"
puts "\nproduct             : #{[1,2].product([1,2])}"
puts "\nrindex              : #{array.rindex(2)}" 
puts "rotate                : #{array.rotate(2)}"
puts "rotate!               : #{array.rotate!(2)}"
puts "\nsample              : #{array.sample(2)}" #choose random element
array -= array_2
puts "select                : #{array.select {|i| i.even?}}" #select element acoording to condition
puts "select!               : #{array.select! {|i| i.even?}}"
puts "shuffle               : #{array.shuffle}"
puts "shuffle!              : #{array.shuffle!}"
array.slice!(2)
puts "slice!                : #{array}"
array_2 = ["p","c","a","b"]
puts "\nsort                : #{array_2.sort}"
puts "sort!                 : #{array_2.sort!}"
puts "sort(reverse)         : #{array_2.sort {|x,y| y <=> x}}"
puts "sort!(reverse)        : #{array_2.sort! {|x,y| y <=> x}}"
# puts "sort_by!              : #{array_2.sort_by!.to_a}" #same value return
puts "\ntake_whil           : #{array_1.take_while {|i| i < 2}}"
puts "to_h                  : #{[[1,2],["name","parthavi"]].to_h}"
puts "to_s                  : #{array.to_s}"
puts "\nvalues_at           : #{array_2.values_at(1,3)}"
puts "\nzip                 : #{array.zip(array_2)}"
puts "\nor                  : #{array | array_2}"
puts "\ninspect             : #{array_2.inspect}"
array_1 = ["parthavi",97,2]
puts "\npack                : #{array_1.pack("a3CC")}"