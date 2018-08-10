class Genre 
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def all 
    @@all
  end 
  
  def new_song(name, artist)
    song = Song.new(name, self, )
end