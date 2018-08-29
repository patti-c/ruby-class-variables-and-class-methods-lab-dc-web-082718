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

    #NOTE This is controlled for inside the .genre method instead.
    # if @@genres.include?(genre) == false
    #   @@genres << genre
    # end

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

  def self.genre_count
    result_hash = {}
    @@genres.each do |genre|
      if result_hash.key?(genre) == false
        result_hash[genre] = 1
      else
        result_hash[genre] += 1
      end
    end
    result_hash
  end

  def self.artist_count
    result_hash = {}
    @@artists.each do |artist|
      if result_hash.key?(artist) == false
        result_hash[artist] = 1
      else
        result_hash[artist] += 1
      end
    end
    result_hash
  end

end
