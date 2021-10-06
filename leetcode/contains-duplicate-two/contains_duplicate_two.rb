require 'pry'

# https://leetcode.com/problems/contains-duplicate-ii/

module LeetCode
  class ContainsDuplicateTwo
    # @param {Integer[]} nums
    # @param {Integer} k
    # @return {Boolean}
    def contains_nearby_duplicate(nums, k)
      return false if nums.size == 1

      seen = {}

      nums.each_with_index do |num,idx|
        if seen[num]
          return true if (seen[num] - (idx+1)).abs <= k
        end

        seen[num] = idx+1
      end

      false
    end
  end
end
