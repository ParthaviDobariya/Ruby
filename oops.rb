class User
	@@no_of_user = 0 #class variable
  def initialize(id,name)
  	@id,@name = id, name
  	@@no_of_user += 1
  end
  # getter method
  def getid
  	@id
  end
  def getname
  	@name
  end
  # setter method
  def setid=(id)
  	@id = id
  end
  def setname=(name)
  	@name = name
  end
  # instance method
  def welcome
  	puts "\nwelcome...!!!"
  	private :welcome
  end
  # class method
  def self.no_of_user
  	puts "\nNumber of User is #{@@no_of_user}"
  end
  # to_s method
  def to_s
    "(id : #{@id}, name : #{@name})"
  end
  protected :to_s
end
user_1 = User.new(1,"parthavi")
user_3 = User.allocate
# allocate
puts "allocate method                  : #{user_3.getname}"   
# user_1.welcome
puts "user id                          : #{user_1.getid}"
puts "user name                        : #{user_1.getname}"
# puts "String representation of object1 : #{user_1}"
user_1.setid= 2
user_1.setname= "Hemali"
puts "\nuser id                        : #{user_1.getid}"
puts "user name                        : #{user_1.getname}"
user_2 = User.new(3,"Richa")
user_2.freeze
User.no_of_user
if (user_2.frozen?)
	puts "\nUser 2 object is frozen"
else
	puts "\nUser 2 object is normal"
end
user_2.setname="neel"