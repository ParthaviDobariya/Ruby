class LoginLogout
  def initialize(name)
  	@name = name
  	@login = false
  end
  def check
  	if @name.match(/^[a-z][a-z\d]*$/)
  		return true 
  	end 
  end
  def login
  	@login = true
  end
  def logout
  	@login = false
  end
end

print "\nEnter UserName : "
username = gets
loginlogout = LoginLogout.new(username)
if username.size.between?(5,10)
	if loginlogout.check
		puts "correct : #{username}"
		puts "is #{loginlogout.login ? "logged in" : "logout"}"
		puts "is #{loginlogout.logout ? "logged in" : "logout"}"
	else
		puts "incorrect : #{username} \nPlease start a name with character"
	end
else
	puts "\nUserName length must be between 5-10 character"
end