image_array = Array.new
print "Enter value for image Dimension : "
L = gets.to_i 
if L > 0 && L < 10000
	print "Enter number of images you have : " 
	N = gets.to_i 
	if N > 0 && N < 100
		i =0 
		while i < (N*2)
	  	print "\nEnter width of image : "
	    image_array[i] = gets.to_i 
	    if image_array[i] > 0 && image_array[i] < 10000
		    print "Enter height of image : " 
		    image_array[i+1] = gets.to_i
		    if image_array[i+1] > 0 && image_array[i+1] < 10000
		    else
	        puts "\nImage height should be between 0 and 10000."
		    end
		  else
	      puts "\nImage width should be between 0 and 10000."
		  end
	    i += 2
	  end
	  puts "\n"
	  i=0
	  while i < (N*2)
	  	if (image_array[i] >= L) && (image_array[i+1] >= L)
				if image_array[i] == image_array[i+1]
					puts "Perfect"
				else
					puts "Crop and Accept"
				end
			elsif (image_array[i] < L) || (image_array[i+1] < L)
				puts "Image not Valid"
			end
	  	i +=2
	  end
	else
	  puts "\nImage number should be between 0 and 100."
	end
else
	puts "\nDimension value should be between 0 and 10000."
end