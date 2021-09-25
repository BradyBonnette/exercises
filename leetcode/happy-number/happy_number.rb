require 'pry'

# https://leetcode.com/problems/happy-number/

module LeetCode
  class HappyNumber

    # @param {Integer} n
    # @return {Boolean}
    def is_happy(n)
      seen_values = {}

      sum = 0
      tmp = n

      while tmp != 1
        while tmp > 0
          remainder = tmp % 10
          tmp /= 10
          sum += remainder**2
        end

        return false if seen_values[sum]
        seen_values[sum] = true
        tmp = sum
        sum = 0
      end

      true
    end

  end
end
