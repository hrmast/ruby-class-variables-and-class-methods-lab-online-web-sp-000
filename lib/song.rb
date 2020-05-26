require "pry"

class Song
  attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
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
    #binding.pry
    #count the number of times a song occurs within the genre
    genre_count = Hash.new(0)
    @@genres.each do |genre| genre_count[genre] += 1
    end
    genre_count
  end


  def self.artist_count

  end
end
