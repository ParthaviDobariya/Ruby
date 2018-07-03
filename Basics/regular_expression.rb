# =~ - match a string with regular expression
if("I am Parthavi" =~ /p(.*)/i)
  puts "line contains Parthavi"
end
p = "I am Parthavi 1234"
puts"\nbegining of line         : #{p.match(/^I/)}"
puts"ending of line             : #{p.match(/i$/)}"
puts"character                  : #{p.match(/\w/)}"
puts"character                  : #{p.match(/\w{4}/)}"
puts"or                         : #{p.match(/\w|\d/)}"

a = /[Rr]uby/.match("Ruby is a programming language")  #return matchdata object
puts "\n#{a.class}"
puts "I am Parthavi =~ /p(.*)/i : #{"I am Parthavi" =~ /p(.*)/i}" #return number

puts "#{/1 \* 2 = 2/.match("1 * 2 = 2")}"
puts "#{/[aeiou]/.match("parthavi")}"
a = "hello1234"
puts "\ndigit                   : #{a.match(/\d/)}"
puts "digit                     : #{a.match(/\d+/)}"

ruby = "Ruby is a programming language"
puts "\n#{ruby.scan(/[aeiou][a-z]*/)}"
puts "#{ruby.scan(/[aeiou][a-z]+/)}"
puts "#{ruby.scan(/[aeiou][a-z]?/)}"
puts "#{ruby.scan(/\b[aeiou][a-z]*\b/)}"
puts "#{ruby.scan(/(.*)/)}"

puts "\nsub!                    : #{ruby.sub!(/p.*ing/,"")}"
puts "\ngsub!                   : #{ruby.gsub!("language","Language")}"