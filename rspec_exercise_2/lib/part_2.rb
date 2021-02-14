def palindrome?(word)
  word.each_char.with_index do |char, i|
    return false if word[i] != word[-i - 1]
  end
  true
end

def substrings(str)
  substrings_arr = []
  (0...str.length).each do |start_idx|
    (start_idx...str.length).each do |end_idx|
      substrings_arr << str[start_idx..end_idx]
    end
  end
  substrings_arr
end

def palindrome_substrings(abracadabra)
  substrings(abracadabra).select{ |substr| palindrome?(substr) && substr.length > 1 }
end
