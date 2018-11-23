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
    @@genres << self.genre
    @@artists << self.artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  @@genre_number = {}
  @@artist_number = {}

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_number[genre]
        @@genre_number[genre] += 1
      else
        @@genre_number[genre] = 1
      end
    end
    @@genre_number
  end

  def self.artist_count
    @@artists.each do |artist|
      if @@artist_number[artist]
        @@artist_number[artist] += 1
      else
        @@artist_number[artist] = 1
      end
    end
    @@artist_number
  end

end
