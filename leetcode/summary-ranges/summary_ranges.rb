require 'pry'

# https://leetcode.com/problems/summary-ranges/

module LeetCode
  class SummaryRanges

    # @param {Integer[]} nums
    # @return {String[]}
    def summary_ranges(nums)
      return [] if nums.nil?
      return [] if nums.size == 0
      return [nums.first.to_s] if nums.size == 1

      ranges = []

      curr_range = [nums[0],nums[0]]

      (1..nums.size).each do |i|
        if nums[i] == curr_range[1]+1
          curr_range[1] = nums[i]
        else
          if curr_range[0] == curr_range[1]
            ranges << curr_range[0].to_s
          else
            ranges << "#{curr_range[0]}->#{curr_range[1]}"
          end

          curr_range = [nums[i], nums[i]]
        end
      end

      ranges
    end

  end
end
