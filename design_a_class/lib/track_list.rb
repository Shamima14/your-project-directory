class TrackList
  def initialize()
    @songs = []
  end

  def add_tracks(song) # song is a string
    @songs << song
  end

  def list_tracks()
    return @songs
  end
  
  def remove_tracks(song)
    @songs.delete(song)
  end
 
  def remove_duplicates
    @songs.uniq!
  end
end
