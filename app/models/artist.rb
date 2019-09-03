class Artist

  attr_reader :name, :years_experience
  
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    paintings.map{|painting| painting.gallery}.uniq
  end

  def cities
    galleries.map{|gallery| gallery.city}.uniq
  end

  def create_painting(title, price, gallery)
    Painting.new(title, self, price, gallery)
  end

  def self.total_experience
    all.sum{|artist| artist.years_experience}
  end

  def self.most_prolific
    current_most = 0
    current_leader = 0

    all.each do |artist|
      per_year = artist.paintings.length.to_f/artist.years_experience
      if per_year > current_most then
        current_most = per_year
        current_leader = artist
      end
    end
    current_leader
  end

  def self.all
    @@all
  end

end
