# define method
names = Hash.new
puts "\ndefault              : #{names.default}"
names = Hash.new("name") #names = Hash.new "name"
puts "default                : #{names.default}"
puts "names[0]          	 : #{names[0]}"
puts "names[100]             : #{names[100]}"
names[1] = 12
names[2] = 100
puts "\nnames          		 : #{names}"
puts "names[3]         		 : #{names[3]}"
puts "names.key        		 : #{names.keys}"
# display
hash = Hash[ "bird", "sparrow" , "animal", "cow"]
puts "\nfirst method   		 : #{hash}"
hash = Hash[ ["bird", "sparrow"] , ["animal", "cow"]]
puts "second method    		 : #{hash}"
hash =  { "bird" => "sparrow", "animal" => "cow" }
puts "third method     		 : #{hash}"
puts "\nbird           		 : #{hash['bird']}"
puts "animal           		 : #{hash['animal']}"

names = { [1,"name"] => "parthavi", 2 => "12"}
puts "\nkeys           		 : #{names.keys}"
puts "value            		 : #{names.values}"
names[3] = "trainee"
puts "\nadd new value  		 : #{names}"

# methods
# puts "\ntry_convert    : #{names.try_convert({2 => 12})}"
hash_1 = { 1 => "a", 2 => "b"}
hash_2 = { 2 => "b", 1 => "a" }
hash_3 = { 2 => "b", 1 => "a", 3 => "c" }
puts "\n1 < 3          		 : #{hash_1 < (hash_3)}"
puts "1 <= 3           		 : #{hash_1 <= (hash_3)}"
puts "\n1 == 2         		 : #{hash_1 == hash_2}"
puts "2 == 3           		 : #{hash_2 == hash_3}"
puts "1 == 3           		 : #{hash_1 == hash_3}"
puts "\n1 > 3          		 : #{hash_1 > (hash_3)}"
puts "1 >= 3           		 : #{hash_1 >= (hash_3)}"
# assoc
puts "\nassoc                : #{names.assoc(3)}"
# clear
puts "\nclear                : #{names.clear}"
names = {[1, "name"]=>"parthavi", 2=>"12", 3=>"trainee", 4=>"123"}
puts "\ncompare_by_identity  : #{names.compare_by_identity}"
puts "\ncompare_by_identity? : #{names.compare_by_identity?}"
# default
hash_1.default = "Go..."
puts "\nset default value    : #{hash_1.default(5)}"
h = Hash.new { |h,k| h[k] = k + 1}
p = h.default_proc
puts "default_proc           : #{p}"
a = []
puts "p.call(a, 2)           : #{p.call(a, 2)}"
h.default_proc = proc do |h,k| h[k] = k * k end
puts "h[3]                   : #{h[3]}"
names.delete(4)
puts "delete                 : #{names}"
names.delete_if {|key,value| key == [1,"name"]}
puts "delete_if              : #{names}"
# h = {foo => {bar => {obj => 12}}}
# puts "dig                  : #{h.dig("foo","bar","obj")}"
# each
puts "\neach : " #each_pair
names.each do |key, value|
  print key, " : ", value, "\n"
end
puts "\neach_key : " 
names.each_key do |key|
  puts key 
end
puts "\neach_value : " 
names.each_value do |value|
  puts value 
end
puts "\nempty?               : #{names.empty?}"
puts "eql?                   : #{hash_1.eql?(hash_2)}"
# fetch
puts "\nfetch                : #{names.fetch(2)}"
puts "fetch_values           : #{names.fetch_values(2,3)}"
puts "flatten                : #{names.flatten}"
# has_key
puts "\nhas_key?             : #{names.has_key?(2)}"
puts "has_value?             : #{names.has_value?("trainee")}"
puts "hash                   : #{names.hash}"
# include
puts "\ninclude?             : #{names.include?(2)}"
puts "inspect                : #{names.inspect}"
puts "invert                 : #{names.invert}"
# keep_if
puts "\nkeep_if              : #{names.keep_if {|i| i>1 }}"
puts "key                    : #{names.key("12")}"
puts "key?                   : #{names.key?(2)}"
puts "keys		             : #{names.keys}"
# length
puts "\nlength               : #{names.length}"
# member
puts "\nmember?              : #{names.member?(2)}"
puts "merge                  : #{hash_1.merge(hash_3)}"
puts "merge!                 : #{hash_1.merge!(hash_3)}"
# rassoc
puts "\nrassoc               : #{names.rassoc("12")}"
a = ["p", "q" ]
b = ["x", "y"]
h = {a => 12, b => 10}
a[0] = "r"
puts "rehash                 : #{h.rehash}"
puts "reject                 : #{names.reject {|i| i>2 }}"
puts "reject!                : #{names.reject! {|i| i>2 }}"
puts "replace                : #{names.replace({3 => "employee"})}"
names[2] = 12
# select
puts "select                 : #{names.select {|i| i >= 2 }}"
puts "select!                : #{names.select! {|i| i >= 2 }}"
puts "shift                  : #{names.shift}"
puts "size                   : #{names.size}"
names.store(1, "parthavi")
puts "store            		 : #{names}"
# to_a
puts "\nto_a                 : #{names.to_a}"
puts "to_h                   : #{names.to_h}"
puts "to_hash                : #{names.to_hash}"
puts "to_proc                : #{names.to_proc}"
# update
puts "\nupdate               : #{hash_2.update(hash_1)}"
# values_at
puts "\nvalues_at            : #{names.values_at(2)}"