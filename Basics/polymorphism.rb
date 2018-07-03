class Language
  def print
    puts "This is Language Class"
  end
end
class C < Language
  def print
    puts "This is C Language Class"
  end
end
class Ruby < Language
  def print
    puts "This is Ruby Language Class"
  end
end
C.new.print
Ruby.new.print
puts "\n....C class ancestors...."
puts C.ancestors
puts "\n....Ruby class ancestors...."
puts Ruby.ancestors