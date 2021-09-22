require 'pry'

# https://leetcode.com/problems/reverse-bits/

module LeetCode
  class ReverseBits
    # @param {Integer} n, a positive integer
    # @return {Integer}
    def reverse_bits(n)
      # To get a specific bit:
      #   (number >> specific_bit_index & 1)
      # To set a specific bit:
      #   number |= (value_of_bit) << specific_bit_index

      result = 0

      # Visit each bit in n, lower end to higher end
      # Get the value of each bit, and set it to it's "mirror" side
      # by subtracting the counter from 31

      # n = 10011
      #         *
      #         count (0)
      # r = 10000
      #     * set 5-0=5 as 1

      # n = 10011
      #        *
      #        count (1)
      # r = 11000
      #      * set 5-1=4 as 1

      # n = 10011
      #       *
      #       count (0)
      # r = 11000
      #       * set 5-2=3 as 0
      # ...
      # ...
      (0..31).each do |count|
        result |= ((n >> count) & 1) << 31-count
      end

      result
    end

  end
end
