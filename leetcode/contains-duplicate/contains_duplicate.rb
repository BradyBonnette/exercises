require 'pry'

# https://leetcode.com/problems/contains-duplicate/

module LeetCode
  class ContainsDuplicate
    # @param {Integer[]} nums
    # @return {Boolean}
    def contains_duplicate(nums)
      dupes = {}

      nums.each do |num|
        return true if dupes[num]
        dupes[num] = true
      end

      false
    end
  end
end
