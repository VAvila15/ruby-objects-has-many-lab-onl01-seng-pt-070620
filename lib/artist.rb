<<<<<<< HEAD
require 'pry'
=======
>>>>>>> 7fb9a5f5ab127afbe33574493543e82aaf8f1183
class Artist
  
  attr_accessor :name, :songs
  
  @@song_count = 0
  
  def initialize(name)
    @name = name
    @songs = []
<<<<<<< HEAD
    @@song_count
=======
>>>>>>> 7fb9a5f5ab127afbe33574493543e82aaf8f1183
  end
  
   def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end
  
  def self.song_count
<<<<<<< HEAD
    Song.all.count
=======
    @@song_count
>>>>>>> 7fb9a5f5ab127afbe33574493543e82aaf8f1183
  end
  
end