require_relative '../config/environment.rb'

a1 = Artist.new("Titian", 27)
a2 = Artist.new("Picasso", 32)
a3 = Artist.new("Bob Ross", 45)

g1 = Gallery.new("Uffizi", "Florence")
g2 = Gallery.new("Louvre", "Paris")
g3 = Gallery.new("Museum of Bad Art", "Somerville")
g4 = Gallery.new("Gardner Museum", "Boston")

p1 = Painting.new("The Rape of Europa", a1, 1000000000000, g4)
p2 = Painting.new("Guernica", a2, 999999999, g2)
p3 = Painting.new("Happy Little Trees", a3, 1234567, g1)
p4 = Painting.new("Mountain Lake", a3, 777777777, g2)
p5 = Painting.new("Winter Scene", a3, 8765443, g2)


binding.pry

puts "Bob Ross rules."
