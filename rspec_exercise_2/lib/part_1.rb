def partition(nums, num_to_compare)
  arr_2d = Array.new(2) { Array.new }
  nums.each do |num|
    if num < num_to_compare
      arr_2d[0] << num
    else
      arr_2d[1] << num
    end
  end
  arr_2d
end

def merge(hash_1, hash_2)
  # hash1.merge(hash2)
  merged_hash = {}
  hash_1.each { |k, v| merged_hash[k] = v }
  hash_2.each { |k, v| merged_hash[k] = v }
  merged_hash
end

def censor(sentence, curse_words)
  vowels = "aeiou"
  words = sentence.split(" ")
  words.map! do |word|
    if curse_words.include?(word.downcase)
      word.each_char.with_index do |char, idx|
        if vowels.include?(char.downcase)
          word[idx] = "*"
        end
      end
    end
    word
  end
  words.join(" ")
end

def power_of_two?(num)
  product = 1
  while product < num
    product *= 2
  end
  if product == num || product == 1
    true
  else
    false
  end
end
