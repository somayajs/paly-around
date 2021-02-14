def hipsterfy(word)
  vowels = "aeiou"
  i = word.length - 1
  while i >= 0
    if vowels.include?(word[i])
      # word[i] = "" # will mutate the string
      return word[0...i] + word[i+1..-1]
      # return word
    end
    i -= 1
  end
  word
end

def vowel_counts(str)
  count_hash = Hash.new(0)
  vowels = "aeiou"
  str.each_char do |char|
    count_hash[char.downcase] += 1 if vowels.include?(char.downcase)
  end
  count_hash
end

def caesar_cipher(str, n)
  alphabet = ("a".."z").to_a
  new_str = ""
  # return str if n > 25
  str.each_char.with_index do |char, idx|
    if alphabet.include?(char)
      old_index = alphabet.index(char)
      new_index = old_index +  n
      new_str += alphabet[new_index % 26]
      # if new_index > 25
      #   count = new_index - 25
      #   str[idx] = alphabet[count - 1]
      # else
      #   str[idx] = alphabet[new_index]
      # end
    else
      new_str += char
    end
  end
  new_str
end
