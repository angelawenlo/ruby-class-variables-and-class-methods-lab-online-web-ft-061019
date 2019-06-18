require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
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
    genre_count = 0
    @@genres.to_h.each do |genre|
      if genres.include?(genre)
        gen
    end
    end
  end
end
