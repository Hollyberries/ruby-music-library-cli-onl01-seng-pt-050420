class Song
  
  @@all = []
  
attr_accessor :name
attr_reader :artist, :genre
  
    def initialize(name, genre, )
      @name = name
      self.artist = artist if artist
      self.genre = genre if genre
    end
    
    def artist=(artist)
     @artist = artist
     artist.add_song(self)
    end

    def genre=(genre)
     @genre = genre
      genre.songs << self unless genre.songs.include?(self)
    end
  
    def self.all
      @@all
    end
    
    def save
    self.class.all << self
    end
    
    def destroy_all
      all.clear
    end
    
    def self.create(name)
     song = new(name)
     song.save
     song
    end
    
end