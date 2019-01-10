require 'pry'
class Song
 
 @@count = 0
 @@artists = []
 @@genres = []
 @@genre_count = {}
 @@artist_count = {}
 
 attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    binding.pry
    @name = name
    @artist = artist
    @@artists << artist
    @@artist_count[artist] += 1
    @genre = genre
    @@genres << genre
    @@genre_count[genre] += 1 
    @@count += 1
  end 

def self.count
  @@count
end 

def self.artists
@@artists.uniq
end 

def self.genres
  @@genres.uniq
end 

def self.genre_count
@@genre_count
end


def self.artist_count
@@artist_count
end

end 