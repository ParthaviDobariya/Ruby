# freeze is used to string immutable

puts 'backspce notation \\ : "\\"';
puts 'backspce notation \  : That\'s right';
# substitution
puts "\nExpression Substitution"
puts "Multiplication       : #{12 * 2}";
# format
puts "\n%05d" % 12                             
# repeat word
puts "Hii! " * 3
# cocatenation
puts "\nHii from " + self.to_s
puts "                       #{"good".concat(" morning")}"
# append word
a = "hello "
a << "world"  
puts "\n#{a}"   
# comparison
puts "abcdef" <=> "abcde"     
puts "abcdef" <=> "abcdef"    
puts "abcdef" <=> "abcdefg"   
# match
puts "\ncount number of match pattern "
puts "i am girl 123" =~ /\d/  
# index value
a = "hello world"
puts "\n#{a}"
puts "a[1]                 : #{a[1]}"                   
puts "a[2, 3]              : #{a[2, 3]}"  #return character up to length-count               
puts "a[2..3]              : #{a[2..3]}"                
puts "a[-3, 2]             : #{a[-3, 2]}"               
puts "a[7..-2]             : #{a[7..-2]}"               
puts "a[-4..-2]            : #{a[-4..-2]}"              
puts "a[-2..-4]            : #{a[-2..-4]}" 
p = "parthavi"             
# ascii
puts "\ntrue for containing only ascii number"
puts "abc".force_encoding("UTF-8").ascii_only?          
puts "abc\u{6666}".force_encoding("UTF-8").ascii_only?
# bytesize and byteslice
puts "\nbytesize           : #{p.bytesize}"
puts "byteslice(1)         : #{p.byteslice(1)}"
puts "byteslice(1,2)       : #{p.byteslice(1,2)}"
# capitalize,capitalize!
puts "\ncapitalize         : #{p.capitalize}"
puts "capitalize!          : #{p.capitalize!}"
# casecmp,eql?
puts "casecmp(p)           : #{p.casecmp("p")}"
puts "eql?(p)              : #{p.eql?("p")}"
# center
puts "center(10,*)         : #{p.center(10,'*')}"
# char
puts "chars                : #{p.chars}"
# chomp,chomp!-return string if change made in chomp else null
puts "parthavi\n\r.chomp   : #{"parthavi\n\r".chomp}"
puts "parthavi\n\rchomp!   : #{"parthavi\n\r".chomp!}"
# chop,chop!
puts "parthavi*.chop       : #{"parthavi*".chop}"
puts "parthavi*.chop!      : #{"parthavi*".chop!}"
# chr
puts "chr                  : #{p.chr}"
# clear
puts "clear                : #{p.clear}"
p = "parthavi"
puts "codepoints           : #{p.codepoints}"
# count
a = "hello p"
puts "\n#{a}"
puts "a.count lo           : #{a.count "lo"}"                   
puts "a.count lo, o        : #{a.count "lo", "o"}"   #character between l and o           
puts "a.count p, ^p        : #{a.count "p", "^p"}"          
# crypt
# puts "\np.crypt(3)       : #{"p".crypt(3)}"
#delete,delete!
puts "\ndelete i           : #{p.delete "i"}"
puts "delete! i            : #{p.delete! "i"}"
p<<"i"
# downcase,downcase!
puts "downcase             : #{p.downcase}"
puts "downcase!            : #{p.downcase!}"
# dump
puts "parthavi \n  .dump   : #{"parthavi \n  ".dump}"
# each_byte
puts "                     : #{p.each_byte {|i| print i, ' '}}"
# each_char
puts "                     : #{p.each_char {|i| print i, ' '}}"
# each_codepoint
puts "                     : #{"parthavi\u0639".each_codepoint {|i| print i, ' '}}"
# each_line,lines
puts "\neach_line          : #{p.each_line('a') { |s| p s}}"
puts "lines                : #{p.lines}"
# empty?
puts "empty string         : #{"".empty?}"
# end_with?
puts "end_with?(i)         : #{p.end_with?("i")}"
# getbyte
puts "\ngetbyte(3)         : #{p.getbyte(3)}"
# gsub,gsub!
puts "gsub(/[aeiou]/,'*')  : #{p.gsub(/[aeiou]/, '*')}"
puts "gsub!(/[aeiou]/,'*') : #{p.gsub!(/[aeiou]/, '*')}"
# hash
puts "\nhash               : #{p.hash}"
# hex
puts "hex                  : #{"10".hex}"
# include?
p = "parthavi"
puts "\ninclude?           : #{p.include?("par")}"
# index
puts "index                : #{p.index(?a)}"
# replace
puts "\nreplace            : #{p.replace("Parthavi")}"
# insert
puts "\ninsert             : #{p.insert(-1," Dobariya")}"
# inspect
puts "inspect              : #{p.inspect}"
# intern
puts "intern               : #{p.intern}"
# length,size
puts "\nlength             : #{p.length}"
puts "size                 : #{p.size}"
# ljust,rjust
puts "\nljust              : #{p.ljust(20,"*")}"
puts "rjust                : #{p.rjust(20,"*")}"
# match
p = "parthavi"
puts "\nmatch              : #{p.match("par")}"
# next/succ,succ!
puts "\nsucc               : #{p.succ}"
puts "succ!                : #{p.succ!}"
# oct
puts "\noct                : #{"10".oct}"
# ord -return number for one character
puts "ord                  : #{p.ord}"
# partition,rpartition
puts "\npartition          : #{p.partition("a")}"
puts "rpartition           : #{p.rpartition("a")}"
# prepend
puts "prepend              : #{p.prepend("Dobariya ")}"
# reverse,reverse!
p = "parthavi"
puts "\nreverse            : #{p.reverse}"
puts "reverse!             : #{p.reverse!}"
# rindex
p = "parthavi"
puts "rindex               : #{p.rindex('a')}"
# scan
puts "\nscan               : #{p.scan(/../)}"
# scrub,scrub!	- replace invalid number with input string
puts "\nscrub              : #{p.scrub}"
puts "scrub!               : #{p.scrub!}"
# setbyte
puts "\nsetbyte            : #{p.setbyte(0,1)}"
# slice,slice!
puts "\nslice              : #{p.slice(2)}"
puts "slice!               : #{p.slice!(2)}"
# split
p = "parthavi Dobariya"
puts "\nsplit              : #{p.split("ar")}"
# squeeze,squeeze!
puts "\nsqueeze            : #{p.squeeze}"
puts "squeeze!             : #{p.squeeze!}"
# start_with?
puts "\nstart_with?        : #{p.start_with?("p")}"
# strip,strip!
p = "  parthavi  "
puts "\nstrip              : #{p.strip}"
puts "strip!               : #{p.strip!}"
# sub - replace first occurance of character
puts "\nsub                : #{p.sub(/[aeiou]/,'*')}"
puts "sub!                 : #{p.sub!(/[aeiou]/,'*')}"
# sum
p = "Parthavi"
puts "\nsum                : #{p.sum}"
# swapcase,swapcase!
puts "\nswapcase           : #{p.swapcase}"
puts "swapcase!            : #{p.swapcase!}"
# to_c -complex number
puts "\nto_c               : #{"12".to_c}"
# to_f - float number
puts "to_f                 : #{"12".to_f}"
# to_i
puts "to_i                 : #{"10".to_i(8)}"
# to_r - rational
puts "to_r                 : #{"100/2".to_r}"
# to_s,to_str
puts "to_s                 : #{p.to_s}"
puts "to_str               : #{p.to_str}"
# to_sym
puts "to_sym               : #{p.to_sym}"
# tr - change,tr!
p = p.downcase
puts "\ntr                 : #{p.tr('aeiou','*')}"
puts "tr!                  : #{p.tr!('aeiou','*')}"
# tr_s.tr_s!
p = "parthavi"
puts "\ntr_s               : #{p.tr_s('a','*')}"
puts "tr_s!                : #{p.tr_s!('a','*')}"
# unpack
p = "parthavi"
puts "\nunpack             : #{p.unpack('A6Z6')}"
# upcase,upcase!
puts "\nupcase             : #{p.upcase}"
puts "upcase!              : #{p.upcase!}"
# upto
puts "                     : #{"a".upto("p") {|s| print s , ' '}}"
# valid_encoding?
puts "\nvalid_encoding?    : #{p.force_encoding("UTF-8").valid_encoding?}"