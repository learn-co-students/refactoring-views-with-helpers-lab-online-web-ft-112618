class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist.name if artist
  end

  def artist_name=(name) #goal of code is for Song.artist to be a thing
    self.artist = Artist.find_or_create_by(name: name)
  end
end
