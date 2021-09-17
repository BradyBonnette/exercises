require 'pry'

# https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/

module LeetCode
  class TwoSumPartTwo
    # @param {Integer[]} numbers
    # @param {Integer} target
    # @return {Integer[]}
    def two_sum(numbers, target)
      low = 0
      high = numbers.size-1

      # using two pointers, start at the very left and very right end of the array
      # Collapse them in until they both add up to the target.
      # [3,24,50,79,88,150,345], 200
      #  L                  H
      #  L(3) + H(345) = 200 ? no
      #  L(3) + H(345) > 200 ? yes, so move H down by one
      #
      # [3,24,50,79,88,150,345], 200
      #  L              H
      #  L(3) + H(150) = 200 ? no
      #  L(3) + H(150) > 200 ? no, so move L up by one
      #
      # [3,24,50,79,88,150,345], 200
      #     L           H
      #  L(24) + H(150) = 200 ? no
      #  L(24) + H(150) > 200 ? no, so move L up by one
      #
      # [3,24,50,79,88,150,345], 200
      #        L         H
      #  L(50) + H(150) = 200 ? yes, we're done

      while low < high
        if numbers[low] + numbers[high] == target
          return [low+1, high+1]
        elsif numbers[low] + numbers[high] > target
          tmp = numbers[high]
          high -= 1 while numbers[high] == tmp
        else
          tmp = numbers[low]
          low += 1 while numbers[low] == tmp
        end
      end
    end

  end
end
