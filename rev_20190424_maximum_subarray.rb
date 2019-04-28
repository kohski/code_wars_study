def max_sequence(arr)
  return 0 if arr.empty? || arr.max < 0
  arr_len = arr.length - 1
  (0..arr_len).map{|head|
    (head..arr_len).map{|tail|
      if head == tail 
        arr[head]
      else
        arr[head,tail - head + 1].sum
      end
    }.max
  }.max
end