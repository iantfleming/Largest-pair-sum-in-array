# frozen_string_literal: true

class Array_calculator

  def sum_largest_nums(arr)
    more_than_two(arr)
  end

  def more_than_two(arr)
    if arr.length > 2
      arr.sort!
      remove_elements(arr, 2)
      arr.sum
    else
      arr.sum
    end
  end

  def remove_elements(arr, amount=2)
    num = arr.length - amount
    num.times do
      arr.shift
    end
  end

end
