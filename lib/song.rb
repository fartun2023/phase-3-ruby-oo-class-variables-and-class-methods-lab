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
    @@artists << artist
    @@genres << genre
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
    genre_count = {}
    @@genres.each do |genre|
      genre_count[genre] ||= 0
      genre_count[genre] += 1
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      artist_count[artist] ||= 0
      artist_count[artist] += 1
    end
    artist_count
  end
end

# Example usage:
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")

puts ninety_nine_problems.name
# Output: "99 Problems"

puts ninety_nine_problems.artist
# Output: "Jay-Z"

puts ninety_nine_problems.genre
# Output: "rap"

puts Song.count
# Output: 1

puts Song.genres
# Output: ["rap"]

puts Song.artists
# Output: ["Jay-Z"]

puts Song.genre_count
# Output: {"rap"=>1}

puts Song.artist_count
# Output: {"Jay-Z"=>1}  