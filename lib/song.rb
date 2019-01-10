require 'pry'
class Song
 
 @@count = 0
 @@artists = []
 @@genres = []
 @@genre_count = {}
 @@artist_count = {}
 
 attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
  
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    
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
  
@@genres.each {|genre|
binding.pry
@@genre_count[genre] += 1 
end


def self.artist_count
@@artists
@@artist_count[artist] += 1
end

end 