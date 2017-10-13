

# 10/12/2017
# From Matt
# Partition an array such that the maximum of the left subarray is less than the minimum of the right subarray

def shortest_winter(array)
  mins = minimums_from_right(array)
  maxes = maximums_from_left(array)

  partition_idx = -1

  maxes.each_with_index do |left_max, max_idx|
    break if max_idx == maxes.length - 1

    right_min = mins[max_idx + 1]

    if left_max < right_min
      partition_idx = max_idx
      break
    end
  end

  return nil if partition_idx == -1
  [array[0..partition_idx], array[partition_idx + 1...array.length]]
end

def minimums_from_right(array)
  mins = array.dup
  min_idx = mins.length - 1
  overall_min = mins[min_idx]

  while min_idx >= 0
    if mins[min_idx] < overall_min
      overall_min = mins[min_idx]
    end

    mins[min_idx] = overall_min
    min_idx -= 1
  end

  mins
end

def maximums_from_left(array)
  maxes = array.dup
  max_idx = 0
  overall_max = maxes[max_idx]

  while max_idx < array.length
    if maxes[max_idx] > overall_max
      overall_max = maxes[max_idx]
    end

    maxes[max_idx] = overall_max
    max_idx += 1
  end

  maxes
end

p shortest_winter([7, 3, 2, 1, 8, 7, 8, 12, 9])
p shortest_winter([7, 3, 2, 1, 8, 7, 8, 12, 8])
