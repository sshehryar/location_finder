puts "This program  gives a location name if you enter coordinates, and gives coordinates when you enter a location name "

require 'Geocoder'



print "Press (1) to enter location or (2) to enter coordinates: "
choice = gets.chomp 
 if choice == '1'
     print "Enter location: "
     loc = gets.chomp
     coords = Geocoder.coordinates(loc)
     puts "The coordinates for #{loc} are: #{coords}"
     
elsif choice == '2'
    print "Enter Coordinates: "
     coord = gets.chomp
     locat = Geocoder.search(coord)
     disp = locat[0].address
     puts "#{disp}"
     
end


     