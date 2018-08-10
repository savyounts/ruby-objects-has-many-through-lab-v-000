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
    song = Song.new(name, artist, self)
  end 
  
  def songs 
    Songs.all.select {|song| song.genre = self}
  end
  
  def artists 
    self.songs.collect {|song| song.artist}
  end 
  
end