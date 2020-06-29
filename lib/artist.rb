class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    songs.map { |song| song.genre }
  end

  def new_song(song_title, genre)
    Song.new(song_title, self, genre)
  end
end
