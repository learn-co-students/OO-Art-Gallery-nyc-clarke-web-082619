class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    Painting.all.select{|x| x.gallery == self}
  end

  def artists
    paintings.map{|x| x.artist}.uniq
  end

  def artist_names
    arists.map{|x| x.name}
  end

  def most_expensive_painting
    hash = {}
    paintings.each{|x| hash[x] = x.price}
    hash.max_by{|k,v| v}[0]
  end

  def self.all
    @@all
  end


end
