class Information
	def initialize(id, name, address)
    @user_id = id
    @user_name = name
    @user_address = address
  end
  def display
    puts "User Id      : #{@user_id}";
    puts "User Name    : #{@user_name}";
    puts "User Address : #{@user_address}";
  end
end
user_1 = Information.new(1,"Parthavi Dobariya","Katargam");
user_1.display; #call method
puts "";
user_2 = Information.new(2,"Hemali Ambaliya","Katargam");
user_2.display;