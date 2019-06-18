require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    binding.pry
  end
  def self.count
    @@count
  end
  def self.genres
    if @@genres.include?(@genre)
        binding.pry
      @@genres
    else
      @@genres << @genre

    end
  end
end
