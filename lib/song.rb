class Song 
  attr_reader :name, :artist, :genre
  
  @@all = [] 
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@all << self
    @genre.songs << self
    @genre.artists << self.artist
  end 
  
  def self.all
    @@all
  end
end 