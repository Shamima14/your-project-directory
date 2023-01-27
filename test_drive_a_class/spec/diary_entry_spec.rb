require 'diary_entry'

RSpec.describe DiaryEntry do
    it "constructs" do
    diary_entry = DiaryEntry.new("title", "contents")
    expect(diary_entry.title).to eq "title"
    expect(diary_entry.contents).to eq "contents"
  end
    it "returns an empty string" do
    diary_entry = DiaryEntry.new("title", " ")
    expect(diary_entry.count_words).to eq 0
  end
    it "returns the the number of words the user can read per minute" do
    diary_entry = DiaryEntry.new("title", "contents")
    expect(diary_entry.reading_time(200)).to eq 1
  end
    it "returns 1 when given 100 wpm" do
    diary_entry = DiaryEntry.new("title", "Spare" * 100)
    expect(diary_entry.reading_time(100)).to eq 1
  end
    it "returns 2 when given 400 wpm" do
    diary_entry = DiaryEntry.new("title", "Spare" * 400)
    expect(diary_entry.reading_time(400)).to eq 1
  end
    
end

    
    

