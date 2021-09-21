require 'pry'

# https://leetcode.com/problems/factorial-trailing-zeroes/

module LeetCode
  class FactorialTrailingZeroes

    # @param {Integer} n
    # @return {Integer}
    # Had to look this one up :(.
    def trailing_zeroes(n)
      zero_counter = 0

      while n > 0
        zero_counter += n/5
        n /= 5
      end

      zero_counter
    end

  end
end
