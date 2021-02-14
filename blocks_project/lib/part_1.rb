def select_even_nums(arr)
  arr.select(&:even?)
end

def reject_puppies(dogs)
  older =  dogs.reject { |dog| dog["age"] <= 2 }
end

def count_positive_subarrays(array)
  array.count {|subarr| subarr.sum > 0}
end

def aba_translate(word)
  vowels = "aeiou"
  new_word = ""
  word.each_char do |char|
    if vowels.include?(char.downcase)
     new_word << char + "b" + char
    else
      new_word << char
    end
  end
  new_word
end

def aba_array(words)
  words.map { |word| aba_translate(word)}
end
