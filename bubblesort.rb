def bubblesort(arr)
  loop do
    swapped = false

    (arr.length - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end

    break unless swapped
  end

  arr
end

print bubblesort([11, 5, 7, 6, 15])

puts

def bubble_sort_by(arr)
  loop do
    swapped = false

    (arr.length - 1).times do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  print arr
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
