module Name 
  def initialize(name)  
    @name = name  
  end  
  def to_s  
    @name  
  end  
end  
  
module Information  
  include Name  
  def who_am_i?  
    "#{self.class.name} : #{self.to_s}"  
  end  
end  
  
class Animal  
  include Information   
end  
  
class Bird  
  include Information   
end  
  
animal = Animal.new("Cow")  
bird = Bird.new("Sparrow")  
puts animal.who_am_i?  
puts bird.who_am_i?  