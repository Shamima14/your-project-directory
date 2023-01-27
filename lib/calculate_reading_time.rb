def calculate_reading_time(string)
  words = string.split(" ")
  reading_time = (words.length / 200.0).ceil
  return "#{reading_time} minutes"
end