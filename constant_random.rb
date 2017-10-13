# http://www.geeksforgeeks.org/design-a-data-structure-that-supports-insert-delete-search-and-getrandom-in-constant-time/

class ConstantRandom
  def initialize
    @hash = {}
    @array = []
  end

  def insert(el)
    unless self.includes?(el)
      @hash[el] = @array.length
      @array.push(el)
    end
  end

  def remove(el)
    unless self.includes?(el)
      el_idx = @hash[el]
      @hash[el] = nil

      last_idx = @array.length - 1
      last_item = @array[last_idx]

      @array[el_idx] = last_item
      @array.shift

      @hash[last_item] = el_idx
    end
  end

  def includes?(el)
    if @hash[el]
      return true
    end

    false
  end

  def random
    @array[rand(@array.length)]
  end
end


# new_cr = ConstantRandom.new
# new_cr.insert(3)
# new_cr.insert(5)
# new_cr.insert(4)
# new_cr.insert(8)
# new_cr.insert(27)
# new_cr.insert(63)
# new_cr.insert(2)
# new_cr.remove(5)
# new_cr.remove(3)
# p new_cr.random
# p new_cr.random
# p new_cr.random
