require 'pry'

# https://leetcode.com/problems/merge-sorted-array/

module LeetCode
  class MergeSortedArray
    # @param {Integer[]} nums1
    # @param {Integer} m
    # @param {Integer[]} nums2
    # @param {Integer} n
    # @return {Void} Do not return anything, modify nums1 in-place instead.
    def merge(nums1, m, nums2, n)
      return nums1 if nums1.empty? && nums2.empty?
      return nums1 if nums2.empty?

      # Some of this is *sorta* cheating, but ruby has a lot of nice methods to make
      # array operations easy.
      if nums1.empty?
        nums1 = nums2.map(&:clone)
        return nums1
      end

      if m == 0
        nums1.clear
      else
        nums1.slice!(m,nums1.length)
      end

      num1ptr = 0
      num2ptr = 0

      while num2ptr < nums2.size
        while num1ptr < nums1.size && nums1[num1ptr] <= nums2[num2ptr]
          num1ptr += 1
        end
        nums1.insert(num1ptr, nums2[num2ptr])
        num2ptr += 1
      end

      nums1
    end

  end
end
