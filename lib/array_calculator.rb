# frozen_string_literal: true

class Array_calculator
  def sum_largest_nums(arr)
    remove_non_numerics(arr)
    if arr.length <= 2
      arr.sum
    else
      more_than_two(arr)
    end
  end

  def more_than_two(arr)
    arr.sort!
    remove_elements(arr, 2)
    arr.sum
  end

  def remove_elements(arr, amount = 2)
    num = arr.length - amount
    num.times do
      arr.shift
    end
  end

  def remove_non_numerics(arr)
    arr.delete_if { |obj| !(obj.is_a? Numeric) }
  end
end
