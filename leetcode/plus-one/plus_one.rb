require 'pry'
module LeetCode
  class PlusOne
    # @param {Integer[]} digits
    # @return {Integer[]}
    def plus_one(digits)
      i = digits.size-1

      # if the right-most digit is less than 9, then adding one won't issue an overflow
      if digits[i] < 9
        digits[i] += 1
        return digits
      end

      overflow = true

      while overflow
        # e.g. [5,9] => [X,0]
        digits[i] = 0

        # Prepare for another round of overflow
        if digits[i-1] == 9
          i -= 1
          next
        end

        # If the next value won't cause an overflow, we're done
        if digits[i-1] < 9 && digits[i-1] > 0
          digits[i-1] += 1
          break
        end

        # If we've reaached the end of the array and still overflowing,
        # we're going to another order number i.e. 999 => 1000
        if i == 0
          digits.insert(0,1)
          break
        end

        overflow = false
      end

      digits
    end

  end
end
