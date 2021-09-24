require 'pry'

# https://leetcode.com/problems/number-of-1-bits/

module LeetCode
  class NumberOfOneBits

    # @param {Integer} n, a positive integer
    # @return {Integer}
    def hamming_weight(n)
      return 0 if n == 0

      count = 0
      while n > 0 do
        n &= n-1
        count += 1
      end

      count
    end

  end
end
