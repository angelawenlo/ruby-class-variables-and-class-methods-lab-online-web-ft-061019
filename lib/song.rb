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
    genre_hash = {}
    self.genres.each do |genre|
      genre_hash[genre] = @@genres.count {|g| g == genre}
    end
    genre_hash
  end
  def self.artist_count
    artist_hash = {}
    self.artists.each do |artist|
      genre_hash[genre] = @@genres.count {|g| g == genre}
    end
    genre_hash
  end
end
