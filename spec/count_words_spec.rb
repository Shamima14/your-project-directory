require 'count_words'

RSpec.describe '#count_words' do
  it 'returns the number of words in a string' do
    expect(count_words("This is a sample string.")).to eq(5)
  end

  it 'returns 0 for an empty string' do
    expect(count_words("")).to eq(0)
  end
end