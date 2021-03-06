class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << self.artist
    @genre =  genre
    @@genres << self.genre
    @@count += 1

    if @@genre_count[genre] == nil
      @@genre_count[genre] = 1
    else
      @@genre_count[genre] += 1
    end

    if @@artist_count[artist] == nil
      @@artist_count[artist] = 1
    else
      @@artist_count[artist] += 1
    end

  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
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

end
