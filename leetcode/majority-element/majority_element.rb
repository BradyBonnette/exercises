require 'pry'

# https://leetcode.com/problems/majority-element/

module LeetCode
  class MajorityElement

    # @param {Integer[]} nums
    # @return {Integer}
    def majority_element(nums)
      # https://en.wikipedia.org/wiki/Boyer%E2%80%93Moore_majority_vote_algorithm
      # Initialize an element m and a counter i with i = 0
      # For each element x of the input sequence:
      #     If i = 0, then assign m = x and i = 1
      #     else if m = x, then assign i = i + 1
      #     else assign i = i − 1
      # Return m

      m = nil
      i = 0

      nums.each do |x|
        if i == 0
          m = x
          i = 1
        elsif m == x
          i += 1
        else
          i -= 1
        end
      end

      m
    end

  end
end
