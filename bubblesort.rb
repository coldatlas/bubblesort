def bubblesort(arr)
  

  loop do
    
    swapped = false

    (arr.length-1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end

    break if not swapped
  end

   arr
end


print bubblesort([11,5,7,6,15])
