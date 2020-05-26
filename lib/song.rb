require "pry"

class Song
  attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

  def initialize(name, artist, genres)
    @name = name
    @artist = artist
    @genre = genres
    @@count += 1
    @@artists << @artist
    @@genres << @genre
    @@genre_count
    @@artist_count
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
    binding.pry
    #count the number of times a song occurs within the genre

    @name.count
  end

  def self.artist_count

  end
end
