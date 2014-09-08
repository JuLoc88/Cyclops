#  ╔═╗┬``┬┌┬┐┌─┐``╔═╗┌─┐┬``┬`┬┌┬┐┬┌─┐┌┐┌````╔═╗┬`┬┌─┐┬``┌─┐┌─┐┌─┐
#  ║╣`│``│`│`├┤```╚═╗│`││``│`│`│`││`││││````║``└┬┘│``│``│`│├─┘└─┐
#  ╚═╝┴─┘┴`┴`└─┘``╚═╝└─┘┴─┘└─┘`┴`┴└─┘┘└┘````╚═╝`┴`└─┘┴─┘└─┘┴``└─┘

############################
# Created by: Julian Locke #
############################

# Socket Library | http://www.ruby-doc.org/stdlib-2.0/libdoc/socket/rdoc/Socket.html
require 'socket'

# Timeout Library | http://ruby-doc.org/stdlib-1.9.2/libdoc/timeout/rdoc/Timeout.html
require 'timeout'

puts "Elite Solutions | Cyclops is preparing to run..."
print "Enter IP Address: "
ip = gets.chomp

print "Enter Starting Port: "
starting_port = gets.chomp

print "Enter Ending Port: "
ending_port = gets.chomp

puts "Please be patient while Cyclops is scanning ports #{starting_port} through #{ending_port} on #{ip}..."

(starting_port..ending_port).each do |scan|
  begin
    Timeout::timeout(10){TCPSocket.new("#{ip}",scan)}
  rescue
    puts "Port |#{scan}| is closed"
  else
    puts "Port |#{scan}| is open"
  end
end

puts "#{ip} scan is complete!"

puts "Thank you for using Elite Solutions | Cyclops. Please be patient while Cyclops is shutting down..."

sleep 3
