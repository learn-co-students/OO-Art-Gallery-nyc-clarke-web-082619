class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price,artist,gallery)
    @title = title
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    @@all.map{|x| x.price}.sum
  end

end
