def make_snippet(string)
  words = string.split(" ")
  if words.length > 5
    snippet = words[0..4].join(" ") + "..."
  else
    snippet = words.join(" ")
  end
  return snippet
end
