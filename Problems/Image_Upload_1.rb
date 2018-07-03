class ImageUpload

	def initialize #get value of image minimum dimension and number of image 
		print "Enter value for image Dimension : "
		@minimum_dimension = gets.to_i 
		print "Enter number of images you have : " 
		@number_of_image = gets.to_i 
	end

	def get_value #get value of image width and height
		@image_array = Array.new
		i = 0 
		while i < (@number_of_image * 2)
	  	print "\nEnter width and height of image : "
	    @image_array[i], @image_array[i+1] = gets.scan(/-?\d+/).map {|num| num.to_i} 
	    i += 2
	  end
	end

	def validate #validation on minimum dimension, number of image, image width and height
		if @minimum_dimension <= 0 || @minimum_dimension >= 10000
			puts "\nDimension value should be between 0 and 10000 "
		end
		if @number_of_image <= 0 || @number_of_image >= 100
			puts "\nImage number should be between 0 and 100."
		end
		i = 0
		while i < (@number_of_image * 2)
			if (@image_array[i] <=0 || @image_array[i] >=10000) || (@image_array[i+1] <=0 || @image_array[i+1] >=10000)
	      puts "Image width and height should be between 0 and 10000."
		  end
		  i += 2
		end
	end

	def put_value #display image is perfect, crop and accept or not valid.
		puts "\n"
	  i=0
	  if @number_of_image > 0
		  while i < (@number_of_image * 2)
		  	if (@image_array[i] <= 0 || @image_array[i] >= 10000) || (@image_array[i+1] <=0 || @image_array[i+1] >=10000)
		  		puts "wrong input for width and height"
			  elsif (@image_array[i] >= @minimum_dimension) && (@image_array[i+1] >= @minimum_dimension)
					if @image_array[i] == @image_array[i+1]
						puts "Perfect"
					else
						puts "Crop and Accept"
					end
				elsif (@image_array[i] < @minimum_dimension) || (@image_array[i+1] < @minimum_dimension)
					puts "Image not Valid"
				end
		  	i += 2
		  end
		end
	end

end

image_upload = ImageUpload.new
image_upload.get_value
image_upload.validate
image_upload.put_value