require 'date'
class ShopOrder

  # initialize value and array of date and order
  def initialize
    @i, @j, @k, @total_order, @total_amount, @maximum_amount,@average_amount, @minimum_amount = 0, 0, 0, 0, 0, 0, 0, 100000
    @date_order = [
                    [2017,
                      [7,
                        [5,
                          [200]],
                        [6,
                          [300]]
                      ],
                      [8,
                        [5,
                          [200]],
                        [6,
                          [300]]
                      ]
                    ],
                    [2018,
                      [6,
                        [1,
                          [800]],
                        [2,
                          [500]]
                      ],
                      [7,
                        [7,
                          [300]],
                        [8,
                          [400]],
                        [9,
                          [500]]                          
                      ]
                    ]
                  ]
    puts "----------------------\n----------------------"
    puts "Welcome to D-Mart"
    puts "----------------------\n----------------------"
    puts "\nToday's Details"
    puts "---------"
  end

  # get date and amount and store it
  def get_order(date, amount)
    puts "date : #{date}"
    puts "amount : #{amount}"
      @date_order.each do |order_array|
        order_array.each do |year_array|
          if year_array.class != Array
          else
            if order_array[@i] == date.year
              year_array.each do |month_array|
                if month_array.class != Array
                else
                  if year_array[@j] == date.mon
                    month_array.each do |current_date|
                      if current_date.class != Array
                      else
                        if month_array[@i] != date.mday
                          year_array.push([date.mday, [amount.to_i]])
                          return
                        else
                          current_date.push(amount.to_i)
                          return
                        end
                      end
                    end
                  else
                    order_array.push([date.mon,[date.mday,[amount.to_i]]])
                    return
                  end
                end
              end
            else
              @date_order.push([date.year,[date.mon,[date.mday,[amount.to_i]]]])
              return
            end 
          end         
        end
      end
  end
  
  # display order detail for today
  def today_detail(date)
    puts "\n#{date}"
    @date_order.each do |order_array|
      order_array.each do |year_array|
        if year_array.class != Array
        else
          if order_array[@i] == date.year
            year_array.each do |month_array|
              if month_array.class != Array
              else
                if year_array[@j] == date.mon
                  month_array.each do |current_date|
                    if current_date.class != Array
                    else
                      if month_array[@i] == date.mday
                        current_date.each do |order_amount|
                          @total_order = current_date.length
                          while @k < current_date.length
                            @total_amount += current_date[@k]
                            if @minimum_amount > current_date[@k]
                              @minimum_amount = current_date[@k]
                            end
                            if @maximum_amount < current_date[@k]
                              @maximum_amount = current_date[@k]
                            end
                            @k += 1
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end 
        end         
      end
    end
    puts "\n**Total Order #: #{@total_order} "
    puts "**Total Amount : #{@total_amount}"
    puts "**Minimum Order : #{@minimum_amount}"
    puts "**Maximum Order : #{@maximum_amount}"
    if @total_order > 0
      puts "**Average Order : #{@total_amount/@total_order}"
    end
  end

  # display order detail for today
  def month_detail(month, year)
    puts "\nmonth : #{month}"
    puts "year : #{year}"
    @date_order.each do |order_array|
      order_array.each do |year_array|
        if year_array.class != Array
        else
          if order_array[@i] == year.to_i
            year_array.each do |month_array|
              if month_array.class != Array
              else
                if year_array[@j] == month.to_i
                  month_array.each do |current_date|
                    if current_date.class != Array
                    else
                      current_date.each do |order_amount|
                        @total_order += current_date.length
                        @total_amount += order_amount
                        if @minimum_amount > order_amount
                          @minimum_amount = order_amount
                        end
                        if @maximum_amount < order_amount
                          @maximum_amount = order_amount
                        end
                        break
                      end
                    end
                  end
                end
              end
            end
          end 
        end         
      end
    end
    puts "\n**Total Order #: #{@total_order} "
    puts "**Total Amount : #{@total_amount}"
    puts "**Minimum Order : #{@minimum_amount}"
    puts "**Maximum Order : #{@maximum_amount}"
    puts "**Average Order : #{@total_amount/@total_order}"
  end
  # get value from user to choose action
  def input
    puts "----------------------\n----------------------"
    loop do
      puts "\n1 Create New Order\n2 Print Day Details\n3 Print Month Details"
      print "\nHow may I help you?(1, 2, 3 or quit) : "
      number = gets.chop 
      if number.eql?("q") || number.eql?("quit")
        break
      end
      case number.to_i
        when 1
          print "Enter Date and Amount : "
          date, amount = gets.split(' ')
          get_order(Date.parse(date), amount)
        when 2
          print "Enter Date : "
          date = gets
          today_detail(Date.parse(date))
        when 3
          print "Enter Month and Year : "
          month, year = gets.split(' ')
          month_detail(month, year)
        else
          puts "wrong input"
      end
    end 
  end

end

shoporeder = ShopOrder.new
shoporeder.today_detail(Date.today)
shoporeder.input