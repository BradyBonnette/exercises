require 'pry'

# https://leetcode.com/problems/linked-list-cycle/

module LeetCode
  class LinkedListCycle

    # Definition for singly-linked list.
    class ListNode
      attr_accessor :val, :next
      def initialize(val)
        @val = val
        @next = nil
      end
    end

    # @param {ListNode} head
    # @return {Boolean}
    def hasCycle(head)
      return false if head.nil?

      # https://en.wikipedia.org/wiki/Cycle_detection#Floyd's_tortoise_and_hare
      slow_pointer = head
      fast_pointer = head

      while slow_pointer && fast_pointer && fast_pointer.next
        fast_pointer = fast_pointer.next.next
        slow_pointer = slow_pointer.next

        return true if fast_pointer == slow_pointer
      end

      return false
    end

  end
end
