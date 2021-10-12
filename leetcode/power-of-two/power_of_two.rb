require 'pry'

# https://leetcode.com/problems/power-of-two/

module LeetCode
  class PowerOfTwo

    # @param {Integer} n
    # @return {Boolean}
    def is_power_of_two(n)
      # We want to show that n has one and only one 1-bit flipped.
      # When n = 4:
      #         n: 0b100
      #       n-1: 0b011
      # n & (n-1): 0b000 = 0
      # When n = 5:
      #         n: 0b101
      #       n-1: 0b100
      # n & (n-1): 0b100 = 4
      # When n = 8:
      #         n: 0b1000
      #       n-1: 0b0111
      # n & (n-1): 0b0000 = 0
      return n > 0 && ((n & (n-1)) == 0)
    end

  end
end
