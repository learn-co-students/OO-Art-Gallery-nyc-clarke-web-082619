class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
  end

  def paintings
    Painting.all.select{|painting| painting.gallery == self}
  end

  def artists
    paintings.map{|painting| painting.artist}.uniq
  end

  def artist_names
    artists.map{|artist| artist.name}
  end

  def most_expensive_painting
    current_most = 0
    current_leader = 0

    paintings.each do |painting|
      if painting.price > current_most then
        current_most = painting.price
        current_leader = painting
      end
    end
    current_leader
  end

  def self.all
    @@all
  end
end
