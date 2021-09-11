require 'pry'

# https://leetcode.com/problems/single-number/

module LeetCode
  class SingleNumber

    # @param {Integer[]} nums
    # @return {Integer}
    def single_number(nums)
      return nums.first if nums.size == 1

      # Reason XOR works here:
      #   6 ^ 6 = 0
      #   0 ^ 6 = 6
      # XOR is commutative
      #   1 ^ 2 ^ 6 ^ 2 ^ 1 =
      #   1 ^ 1 ^ 2 ^ 2 ^ 6 =
      #     0   ^   0   ^ 6 =
      #                   6
      result = nums[0]

      (1..nums.size-1).each do |i|
        result ^= nums[i]
      end

      result
    end

  end
end
