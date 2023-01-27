require 'diary.rb'

RSpec.describe Diary do
    context "initializes" do
    it "it is empty" do
        diary = Diary.new
        expect(diary.all()).to eq []
    end
  end
end