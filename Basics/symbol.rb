# symbol is better than string
# create only one symbol when declared 2 symbol with same name but string create 2 string

puts ":name.class 		   - #{:name.class}"
puts "name        		   - #{"name".class}"
puts "upcase      		   - #{:parthavi.upcase}"
puts "downcase    		   - #{:Parthavi.downcase}"
puts "capitalize  		   - #{:parthavi.capitalize}"
puts ":parthavi.object_id  - #{:parthavi.object_id}"
puts "parthavi.object_id   - #{"parthavi".object_id}"
puts "all_symbols          - #{Symbol.all_symbols}"
puts "all_symbols.size     - #{Symbol.all_symbols.size}"

# identifying things
# used in 
# - method calls
# - set status