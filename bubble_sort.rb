def bubble_sort(data, iteration = 0)
  return data if data.count <= 1

  swapped = false
  length = data.count - iteration

  for i in 0...length-1
    if data[i] > data[i+1]
      d = data[i]
      data[i] = data[i+1]
      data[i+1] = d
      swapped = true
    end
  end

  iteration += 1
  bubble_sort(data, iteration) if swapped

  data
end

p bubble_sort([4, 3, 78, 2, 0, 2])