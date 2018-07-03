module Name
  def name(name)
  	puts "#{name}"
  end
end

module Surname
  def surname(surname)
  	puts "#{surname}"
  end
end

class Information
  include Name, Surname
  def information
    puts "Information : "
  end
end

user_1 = Information.new
user_1.information
user_1.name("Parthavi")
user_1.surname("Dobariya")