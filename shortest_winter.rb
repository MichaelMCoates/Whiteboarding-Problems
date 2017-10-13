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

# Matt's solution

# def shortest_winter(array)
#   winter = 0
#   win_max = nil
#   summer = 0
#   sum_max = nil
#   array.each do |temp|
#     win_max = temp unless win_max
#     sum_max = temp unless sum_max
#     sum_max = temp if temp > sum_max
#     summer += 1
#     if temp <= win_max
#       win_max = win_max > sum_max ? win_max : sum_max
#       winter = winter + summer
#       summer = 0
#       sum_max = nil
#     end
#   end
#   p [array[0..winter-1], array[winter..array.length]]
#   return nil if winter == 0 || winter == array.length
#   winter
# end

p shortest_winter([7, 3, 2, 1, 8, 7, 8, 12, 9])
p shortest_winter([7, 3, 2, 1, 8, 7, 8, 9, 12])
p shortest_winter([7, 3, 2, 1, 12, 9])
p shortest_winter([7, 3, 2, 1, 8, 7, 8, 12, 8])
p shortest_winter([1, 2, 3, 4, 5])
p shortest_winter([5, 4, 3, 2, 1])
