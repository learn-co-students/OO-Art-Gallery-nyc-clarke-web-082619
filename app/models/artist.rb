class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select{|x| x.artist == self}
  end

  def galleries
    paintings.map{|x| x.gallery}.uniq
  end

  def cities
    galleries.map{|x| x.city}.uniq
  end

  def create_painting(title,price,gallery)
    Painting.new(title,price,self,gallery)
  end

  def self.all
    @@all
  end

  def self.total_experience
    @@all.map{|x| x.years_experience}.sum
  end

  def self.most_prolific
    hash = {}
    @@all.each{|x| hash[x] = (x.paintings.length.to_f/x.years_experience)}
    hash.max_by{|k,v| v}[0]
  end

end
