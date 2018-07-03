class Information
  @@no_of_users = 0;
	def initialize(id, name, address)
    @user_id = id
    @user_name = name
    @user_address = address
  end
  def total_no_of_customers()
      @@no_of_users += 1
      puts "Total number of users : #@@no_of_users"
   end
  def display
    puts "User Id      : #{@user_id}";
    puts "User Name    : #{@user_name}";
    puts "User Address : #{@user_address}";
  end
end
user_1 = Information.new(1,"Parthavi Dobariya","Katargam");
user_1.display; #call method
user_1.total_no_of_customers;
puts "";
user_2 = Information.new(2,"Hemali Ambaliya","Katargam");
user_2.display;
user_2.total_no_of_customers;
