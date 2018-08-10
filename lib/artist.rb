class Artist 
  attr_accessor :name
  @@all = []
  
  def initialized(name)
    @name = name
    @@all << self
  end 
  
  def all
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end 
  
  def songs 
    Songs.all.select do |song|
      song.artist == self 
    end
  end 
  
  def genres 
    self.songs.collect {|song| song.genre}
  end 
end 