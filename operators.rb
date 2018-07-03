a = 10
b = 20
# arithmetic operator
puts "Arithmetic Operator"
puts "#{a} + #{b}  = #{a + b}"
puts "#{a} - #{b}  = #{a - b}"
puts "#{a} * #{b}  = #{a * b}"
puts "#{a} / #{b}  = #{a / b}"
puts "#{a} % #{b}  = #{a % b}"
puts "2 ** 3       = #{2 ** 3}"

# Comparison operator
puts "\nComparison Operator"
puts "#{a} == #{b}      = #{a == b}"
puts "#{a} != #{b}      = #{a != b}"
puts "#{a} > #{b}       = #{a > b}"
puts "#{a} < #{b}       = #{a < b}"
puts "#{a} >= #{b}      = #{a >= b}"
puts "#{a} <= #{b}      = #{a <= b}"
puts "#{a} <=> #{b}     = #{a <=> b}"
puts "(1..5)===2        = #{(1..5)===2}"
puts "1.eql?1.0         = #{1 .eql? 1.0}"
puts "#{a} .equal? #{b} = #{a .equal? b}"

# assignment operator
puts "\nAssignment Operator"
c = a + b
puts "c = #{a} + #{b}  = #{c}"
puts "c += #{a}   = #{c += a}"
puts "c -= #{a}   = #{c -= a}"
puts "c *= #{a}   = #{c *= a}"
puts "c /= #{a}   = #{c /= a}"
puts "c **= 2     = #{c **= 2}"
puts "c %= #{a}   = #{c %= a}"

# parallel assignment
puts "\nParallel Assignment"
a, b, c = 10, 20, 30
puts "a = #{a}\nb = #{b}\nc = #{c}"

# swap value
puts "\nSwap Value"
a, b = b , a
puts "a = #{a}\nb = #{b}"

# Bitwise Operator
puts "\nBitwise Operator"
puts "#{20.to_s(2)}\n#{10.to_s(2)}"
puts "#{a} & #{b}  = #{a&b}"
puts "#{a} | #{b}  = #{a | b}"
puts "#{a} ^ #{b}  = #{a ^ b}"
puts "~#{a}        = #{~a}"
puts "#{b}<<2      = #{b<<2}"
puts "#{b}>>2      = #{b>>2}"

# Logical operator
puts "\nLogical Operator"
a = 20
puts "#{a}<50 and #{b}<50 = #{a<50 and b<50}"
puts "#{a}<50 or #{b}<50  = #{a<50 or b<50}"
puts "#{a}<50 && #{b}<50  = #{a<50 && b<50}"
puts "#{a}<50 || #{b}<50  = #{a<50 || b<50}"
puts "!(#{a}&&#{b})       = #{!(a && b)}"
puts "not(#{a}&&#{b})     = #{not(a && b)}"

# Ternary Operator
puts "\nTernary Operator"
puts "#{a}>0 and #{b}>0 then #{a} + #{b} = #{a>0 and b>0 ? a + b : "both value are negative."}"

# defined? operator
puts "\ndefined? Operator"
c = 42
puts "defined? c         = #{defined? c}"    
puts "defined? $_        = #{defined? $_}" 
puts "defined? puts      = #{defined? puts}"
puts "defined? puts(bar) = #{defined? puts(bar)}"
puts "defined? super     = #{defined? super}"    # true if super method present
puts "defined? yield     = #{defined? yield}"    # true if yield block present

# . and :: operator
puts ". and :: Operator"
COUNT = 0         
module Foo
   COUNT = 0
   ::COUNT = 1    #constant resolution operator
   COUNT = 2      
end
puts COUNT        
puts Foo::COUNT 