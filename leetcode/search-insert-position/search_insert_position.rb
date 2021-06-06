require 'pry'
module LeetCode
  class SearchInsertPosition
    def search_insert(nums, target)

      if nums.size == 1
        return 0 if target <= nums[0]
        return 1 if target > nums[0]
      end

      left = 0
      right = nums.size-1
      mid = (right-left)/2

      while mid >= 0
        if right-left == 1
          if target <= nums[left]
            return left
          end

          if target > nums[right]
            return right+1
          end

          return right
        end

        if target == nums[mid]
          return mid
        end

        if target < nums[mid]
          right = mid
          mid = (right-left)/2
          next
        end

        if target > nums[mid]
          left = mid
          mid = left + ((right-left)/2)
          next
        end
      end

    end
  end
end
