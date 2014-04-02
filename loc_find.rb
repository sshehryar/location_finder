puts "This is a crappy program used to find stuff via geocoder!"

#The following two lines of code is used to fetch the external (remote) ip of user's pc from whatismyip.com
require 'open-uri'
remote_ip = open('http://whatismyip.akamai.com').read

print "Your Remote ip-address is: #{remote_ip} \n"

#just a remider nut-job to run ruby scripts use C:\ruby loc_finder.rb

#code below initializes and uses geocoder gem
require 'geocoder'

addr = remote_ip.to_s

loc = Geocoder.search(addr)
disp = loc[0].address
puts "Location is: #{disp}"

#coord = Geocoder.coordinates(addr)
#cntry = loc.country_name
#puts "Coordinates: #{coord}"
#puts "Country: #{country}"    

