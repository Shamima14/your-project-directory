require 'diary.rb'
require 'diary_entry.rb'

RSpec.describe Diary do 
    context "when we add and entry" do
    it "adds entry to list of diary entries" do 
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("my_title_1", "my_contents_1")
        diary_entry_2 = DiaryEntry.new("my_title_2", "my_contents_2")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect(diary.all()).to eq [diary_entry_1, diary_entry_2]
    end
  end
end 

