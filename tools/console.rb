require_relative '../config/environment.rb'

met = Gallery.new('The Met', 'NYC')
moma = Gallery.new('Moma', 'NYC')
nathistory = Gallery.new('Natural History', 'D.C.')
amhistory = Gallery.new('American History', 'D.C.')
louvre = Gallery.new('The Louvre', 'Paris')
orsay = Gallery.new('Musee de Orsay', 'Paris')

pollock = Artist.new('Jackson Pollock', 3)
dali = Artist.new('Salvador Dali', 4)
warhol = Artist.new('Andy Warhol', 2)
picasso = Artist.new('Pablo Picasso', 5)

mast = Painting.new('Great Masturbator', 12000, dali, orsay)
campbells = Painting.new('Soup Cans', 1000, warhol, moma)
marilyn =  Painting.new('Marilyn Monroe', 5000, warhol, met)
guernica = Painting.new('Guernica', 9000, picasso, louvre)
weeping = Painting.new('Weeping Woman', 8000, picasso, orsay)
asleep = Painting.new('Asleep', 4000, picasso, met)
autumm = Painting.new('Autumn Rhythm', 2500, pollock, amhistory)
summer = Painting.new('Summer Rhythm', 3000, pollock, louvre)
spring = Painting.new('Spring Rhythm', 4000, pollock, met)
winter = Painting.new('Winter Rhythm', 1000, pollock, nathistory)


binding.pry

puts "Bob Ross rules."
