require 'pry'

module LeetCode
  class MaximumSubarray
    def max_sub_array(nums)
      current_max = nums.first
      current_sum = 0

      nums.each do |n|
        if current_sum < 0
          current_sum = 0
        end

        current_sum += n
        current_max = [current_max, current_sum].max
      end

      current_max
    end
  end
end
