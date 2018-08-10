class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  def self.new_song(name, genre)
    name = Song.new(name, self, genre)
  end 
  
  def songs 
    Song.all.select do |song|
      song.artist == self 
    end
  end 
  
  def genres 
    self.songs.collect {|song| song.genre}
  end 
end 