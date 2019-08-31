class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all 
    @@all 
  end

  def self.total_experience
    self.all.map{|art| art.years_experience}.reduce(&:+)
  end

  def self.most_prolific
     self.all.max_by{|artist| artist.paintings.length / artist.years_experience}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    paintings.map{|painting| painting.gallery}.uniq
  end

  def cities
    galleries.map{|gal| gal.city}.uniq
  end
end
