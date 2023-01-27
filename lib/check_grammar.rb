def check_grammar(string)
  first_letter = string[0]
  last_character = string[-1]
  capital_letter = first_letter == first_letter.upcase
  punctuation_mark = (last_character == "." || last_character == "!" || last_character == "?")
  if capital_letter && punctuation_mark
    return true
  else
    return false
  end
end
