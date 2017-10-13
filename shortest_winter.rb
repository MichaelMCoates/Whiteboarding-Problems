


# Partition an array such that the maximum of the left subarray is less than the minimum of the right subarray

def shortest_winter(array)
  mins = array.dup
  maxes = array.dup

  idx1 = array.length - 1
  min = mins[idx1]

  while idx1 >= 0
    if mins[idx1] < min
      min = mins[idx1]
    end

    mins[idx1] = min
    idx1 -= 1
  end

  idx2 = 0
  max = maxes[idx2]

  while idx2 < array.length
    if maxes[idx2] > max
      max = maxes[idx2]
    end

    maxes[idx2] = max
    idx2 += 1
  end

  split_idx = -1

  maxes.each_with_index do |test_max, max_idx|
    if test_max < mins[max_idx + 1]
      split_idx = max_idx
      break
    end
  end

  if split_idx == -1
    return nil
  else
    return [array[0..split_idx], array[split_idx + 1...array.length]]
  end
end

# p shortest_winter([7, 3, 2, 1, 8, 7, 8, 12, 9])
