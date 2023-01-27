require 'check_grammar'

RSpec.describe 'check_grammar' do
  it 'returns true if the first letter is capital and ends with a punctuation mark' do
    expect(check_grammar("This is a short string.")).to eq(true)
  end

  it 'returns false if the first letter is not capital or last character does not end with a punctuation mark' do
    expect(check_grammar("this is a short string")).to eq(false)
  end
end