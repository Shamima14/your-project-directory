require 'make_snippet'

describe '#make_snippet' do
  it 'returns the first five words and "..." if there are more than five words' do
    expect(make_snippet("This is an example of how to create a method that returns the first five words of a string.")).to eq("This is an example of...")
  end

  it 'returns the entire string if there are less than or equal to five words' do
    expect(make_snippet("This is a short string.")).to eq("This is a short string.")
  end
end
