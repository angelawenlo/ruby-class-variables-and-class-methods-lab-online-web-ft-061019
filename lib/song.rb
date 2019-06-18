class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres = []
  end
  def self.count
    @@count
  end
  def self.genres
    if @@genres.include?(genre)
      @@genres
    else
      @@genres << genre
    end
  end
end
