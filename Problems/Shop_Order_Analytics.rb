require 'date'
class ShopOrder

	# initialize array of date and order
	def initialize
		@date_order = {2018 => {7 => {9 => [200], 10 => [300] }}}
		puts "----------------------\n----------------------"
		puts "Welcome to D-Mart"
		puts "----------------------\n----------------------"
		puts "\nToday's Details"
		puts "---------"
	end

	# get date and amount and store it
	def get_order(date, amount)
		@date_order[date.year]                      = {} if @date_order[date.year].nil?
		@date_order[date.year][date.mon]            = {} if @date_order[date.year][date.mon].nil?
		@date_order[date.year][date.mon][date.mday] = [] if @date_order[date.year][date.mon][date.mday].nil?
		@date_order[date.year][date.mon][date.mday] << amount.to_i
	end
	
	# display order detail for today
  def today_month_detail(date, month, year,number)
  	@total_order, @total_amount, @minimum_amount, @maximum_amount, @average_amount = 0, 0, 100000, 0, 0
  	orders = []
		if number.eql?(2)
			if !@date_order[year].nil? and !@date_order[year][month].nil? and !@date_order[year][month][date].nil?
				orders = @date_order[year][month][date]
			end
		elsif number.eql?(3)
			if !@date_order[year].nil? and !@date_order[year][month].nil?
				@date_order[year][month].each do |day, amount|
					orders += amount
				end
			end
		end
		@total_order    = orders.length
		@total_amount 	= orders.sum
		@minimum_amount = orders.min
		@maximum_amount = orders.max
		@average_amount = @total_order > 0 ? @total_amount / @total_order : 0
    puts "\n**Total Order #: #{@total_order} "
    puts "**Total Amount  : #{@total_amount}"
    puts "**Minimum Order : #{@minimum_amount}"
    puts "**Maximum Order : #{@maximum_amount}"
    puts "**Average Order : #{@average_amount}"
  end

	# get value from user to choose action
	def input
		puts "----------------------\n----------------------"
		loop do
			puts "\n1 Create New Order\n2 Print Day Details\n3 Print Month Details"
			print "\nHow may I help you?(1, 2, 3 or quit) : "
			case gets.chop
				when "1"
					print "Enter Date and Amount : "
					date, amount = gets.split(' ') 
					get_order(Date.parse(date), amount) if amount.to_i > 0
				when "2"
				  print "Enter Date : "
					date, month, year = gets.split('-')
					today_month_detail(date.to_i, month.to_i, year.to_i, 2) if !date.nil? && !month.nil? && !year.nil?
				when "3"
				  print "Enter Month and Year : "
					month, year = gets.split(' ')
					today_month_detail(0, month.to_i, year.to_i, 3) if !month.nil? || !year.nil?
				when "Q", "QUIT", "q", "quit"
					break 
				else
				  puts "wrong input"
			end
		end 
	end

end

shoporeder = ShopOrder.new
shoporeder.today_month_detail(Date.today.mday, Date.today.mon, Date.today.year,2)
shoporeder.input