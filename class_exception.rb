File.open("file1.txt", "w") do |file|
begin
  puts "begin"
  if file
    file.syswrite("parthavi")
  else
    puts "can't open file"
  end
rescue
  raise FileSaveError
end
end
class FileSaveError < StandardError
  puts "class exception"
end

class MyError < StandardError
  def initialize(msg="My default message")
    puts "class message : #{msg}"
  end
end
begin
  puts "enter message : "
  message = gets
  raise MyError.new(message), "My error"
rescue Exception => e
  puts "message : #{e.message}"
end