def reverser(str, &prc)
  prc.call(str.reverse)
end

def word_changer(str, &prc)
  str_arr = str.split(" ")
  str_arr.map! do |ele|
    prc.call(ele)
  end
  str_arr.join(" ")
end

def greater_proc_value(num, proc_1, proc_2)
  prc_1_result = proc_1.call(num)
  prc_2_result = proc_2.call(num)
  return prc_1_result if proc_1.call(num) > proc_2.call(num)
  proc_2.call(num)
end

def and_selector(array, proc_1, proc_2)
  result_arr = array.select do |ele|
    proc_1.call(ele) && proc_2.call(ele)
  end
  result_arr
end

def alternating_mapper(array, proc_1, proc_2)
  result_arr = array.map.with_index do |ele, i|
    if i.even?
      proc_1.call(ele)
    else
      proc_2.call(ele)
    end
  end
  result_arr
end
