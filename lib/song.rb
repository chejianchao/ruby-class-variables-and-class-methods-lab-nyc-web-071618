
class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@artist_count = {}
  @@genre_count = {}
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
    if @@genre_count[genre] == nil
      @@genre_count[genre] = 0
    end
    @@genre_count[genre] += 1
    if @@artist_count[artist] == nil
      @@artist_count[artist] = 0
    end
    @@artist_count[artist] += 1
  end

  def self.count
    @@count
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

  def self.artists
    @@artist_count.keys
  end

  def self.genres
    @@genre_count.keys
  end
end
