require 'track_list'

RSpec.describe TrackList do
    it "initializes an empty array" do 
        songs = TrackList.new
        expect(songs.instance_variable_get(:@songs)). to eq []
    end
    it "adds a track to the list of tracks" do 
        songs = TrackList.new
        songs.add_tracks("Total eclipse of the heart")
        expect(songs.list_tracks()).to eq (["Total eclipse of the heart"])
    end
    it "adds multiple songs to the track list" do 
        songs = TrackList.new
        songs.add_tracks("Total eclipse of the heart")
        songs.add_tracks("Stop! In the name of love")
        expect(songs.list_tracks()).to eq (["Total eclipse of the heart", "Stop! In the name of love"])
    end
    it "returns list of tracks" do 
        songs = TrackList.new
        expect(songs.list_tracks()).to eq []
    end
    it "removes unwanted tracks" do 
        songs = TrackList.new
        songs.add_tracks("Total eclipse of the heart")
        songs.remove_tracks("Total eclipse of the heart")
        expect(songs.list_tracks()).to eq []
    end
    it "removes unwanted tracks" do
        songs = TrackList.new
        songs.add_tracks("Total eclipse of the heart")
        songs.add_tracks("Stop! In the name of love")
        songs.remove_tracks("Total eclipse of the heart")
        expect(songs.list_tracks()).to eq ["Stop! In the name of love"]
    end
    it "removes duplicate songs" do 
        songs = TrackList.new
        songs.add_tracks("Total eclipse of the heart")
        songs.add_tracks("Total eclipse of the heart")
        songs.remove_duplicates()
        expect(songs.list_tracks()).to eq (["Total eclipse of the heart"])
    end
end
