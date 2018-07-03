# first method
class Post
  class << self
    def print
      puts "I am Parthavi"
    end
  end
end
puts "Using self class : "
Post.print

#  second method
class Post
  def self.print
    puts "I am Parthavi"
  end
end
puts "Using self.method_name : "
Post.print