class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(name) # Bleh, not pretty imo
    song = name.split(" - ")
    new_song = Song.new(song[1])
    new_song.artist = Artist.find_or_create_by_name(song[0])
    new_song.artist.add_song(new_song)
    new_song.artist.save
    new_song
  end
end