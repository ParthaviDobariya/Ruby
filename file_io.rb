name = "parthvai"
surname = "dobariya" 
puts "puts statement"
puts name
puts surname
puts "\ngets statement"
puts "Enter a value : "
value = gets 
puts "entered value is : #{value}"
puts "\nputc statement"
putc name
puts "\n\nprint statement"
print "good morning"
print "Hi....."
puts "\n"

# new
file1 = File.new("file_io.txt","r")
file1.close
# open
File.open("file2.txt", "w+") { |file1| }  

# sysread
puts "\nsysread"
file1 = File.open("file_io.txt", "r+") 
if file1
  puts file1.sysread(10)
else
  puts "can't open file"
end
file1.close
# syswrite
file1 = File.new("file_io.txt", "r+")
if file1
  file1.syswrite("ABCDEF")
else
   puts "can't open file"
end
# each_byte
puts "\neach_byte"
file1 = File.new("file_io.txt", "r+")
if file1
  file1.syswrite("ABCDEF")
  file1.each_byte { |c| putc c;putc ?.}
else
  puts "can't open file"
end
file1.close
# IO.readlines
puts "\nIO.readlines"    #return array
read = IO.readlines("file_io.txt") if File::exists?( "file_io.txt" )
puts read[0]
puts read[1]
# IO.foreach
puts "\nIO.foreach"     #return block
read = IO.foreach("file_io.txt") { |i| puts i}
# rename
# File.rename("file1.txt","file_io.txt")
# delete
# File.delete("file2.txt")
# chmod
file = File.new( "test.txt", "w" )
file.chmod( 0755 )
file.close
# file
puts "\nfile or not?      : #{File.file?("test.txt")}"
puts "directory or not?   : #{File::directory?( "/usr/local/bin" )}"
puts "file readable?      : #{File.readable?("file_io.txt")}"
puts "file writable?      : #{File.writable?("file_io.txt")}"
puts "file executable?    : #{File.executable?("file_io.txt")}"
puts "file zero?          : #{File.zero?("file_io.txt")}"
puts "file size?          : #{File.size?("file_io.txt")}"
puts "file type           : #{File::ftype("test.txt")}"
puts "file created  	  : #{File::ctime("array.rb")}"
puts "file modified       : #{File::mtime("array.rb")}"	
puts "file last accessed  : #{File::atime("array.rb")}"

# Directory
puts "\nDirectory method"
Dir.chdir("/usr/bin")
puts "#{Dir.pwd}"
puts "entries             : #{Dir.entries("/home/softices-08/Ruby_Demo")}"
puts "\nforeach           : "
Dir.foreach("/home/softices-08/Ruby_Demo") {|i| puts i}
puts "\ndir class array method"
Dir["/home/softices-08/Ruby_Demo/"]
# create dir
puts "\ncreate directory  : #{Dir.mkdir("/home/softices-08/newdirectory")}"
# delete dir
puts "delete dir          : #{Dir.delete("/home/softices-08/newdirectory")}"

# temporary directory
require 'tmpdir'
  tempfilename = File.join(Dir.tmpdir, "temporary")
  tempfile = File.new(tempfilename, "w")
  tempfile.puts "This is a temporary file"
  puts "\ntemporary directory path : #{tempfile.path}"
  tempfile.close
  File.delete(tempfilename)
# temporary file
require 'tempfile'
  file = Tempfile.new('temporary')
  file.puts "Hello"
  puts "temporary file path : #{file.path}"
  file.close
  File.delete(file)