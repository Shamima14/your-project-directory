require 'calculate_reading_time'

RSpec.describe '#reading_time' do
  it 'returns the reading time in minutes' do
    expect(calculate_reading_time("This is a sample string.")).to eq("1 minutes")
  end

  it 'returns 0 minutes for an empty string' do
    expect(calculate_reading_time("")).to eq("0 minutes")
  end

  it 'rounds up to the nearest whole number' do
    expect(calculate_reading_time("one "*300)).to eq("2 minutes")
  end
end
