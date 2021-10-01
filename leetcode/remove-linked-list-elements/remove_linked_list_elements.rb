require 'pry'

# https://leetcode.com/problems/remove-linked-list-elements/

module LeetCode
  class RemoveLinkedListElements

    # Definition for singly-linked list.
    class ListNode
      attr_accessor :val, :next
      def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
      end
    end

    # @param {ListNode} head
    # @param {Integer} val
    # @return {ListNode}
    def remove_elements(head, val)
      return nil if head.nil?

      # Account for possible matching values at the beginning
      while head && head.val == val
        temp = head
        head = head.next
        temp.next = nil
      end

      curr = head

      # Traverse the rest of the list
      while curr
        if curr.next && curr.next.val == val
          temp = curr.next
          curr.next = curr.next.next
          temp.next = nil
          next
        end

        curr = curr.next
      end

      head
    end

  end
end
