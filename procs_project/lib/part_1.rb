def my_map(array, &prc)
  mapped = []
  array.each do |ele|
    mapped << proc.call(ele)
  end
  mapped
end

def my_select(array, &prc)
  selected = []
  array.each do |ele|
    selected << ele if proc.call(ele)
  end
  selected
end

def my_count (array, &prc)
  count = 0
  array.each do |ele|
    count += 1 if prc.call(ele)
  end
  count
end

def my_any?(array, &prc)
  array.each do |ele|
    return true if prc.call(ele)
  end
  false
end

def my_all?(array, &prc)
  array.each do |ele|
    return false if prc.call(ele) == false
  end
  true
end

def my_none?(array, &prc)
  array.each do |ele|
    return false if prc.call(ele)
  end
  true
end
