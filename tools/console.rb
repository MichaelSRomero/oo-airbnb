require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end





# Put your variables here~!
#--------------- Listings ----------------#
liberty_island = Listing.new(city: "New York") # 1 trip
king_of_what = Listing.new(city: "Baltimore") # 2 trips
cypher_survival = Listing.new(city: "New York") # 1 trip

#--------------- Guests -------------------#
michael = Guest.new(name: "Michael Romero")
nebz = Guest.new(name: "Michael Narine")

#-------------- Trips --------------------#
ny = Trip.new(listing: liberty_island, guest: michael, duration: 3)
md = Trip.new(listing: king_of_what, guest: michael, duration: 2)
md2 = Trip.new(listing: king_of_what, guest: nebz, duration: 2)
queens = Trip.new(listing: cypher_survival, guest: nebz, duration: 1)
binding.pry
