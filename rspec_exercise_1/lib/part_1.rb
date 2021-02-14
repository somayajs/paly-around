def average(num_1, num_2)
  (num_1 + num_2) / 2.0
end

def average_array(arr)
  arr.sum / (arr.length * 1.0)
end

def repeat(str, num)
  str * num
end

def yell(str)
  str.upcase + "!"
end

def alternating_case(sentence)
  arr = sentence.split(" ").map.with_index do |ele, idx|
    if idx % 2 == 0
      ele.upcase
    else
      ele.downcase
    end
  end
  arr.join(" ")
end
