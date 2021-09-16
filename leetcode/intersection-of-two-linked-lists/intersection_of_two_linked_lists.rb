require 'pry'

# https://leetcode.com/problems/intersection-of-two-linked-lists/

module LeetCode
  class IntersectionOfTwoLinkedLists
    # Definition for singly-linked list.
    class ListNode
      attr_accessor :val, :next
      def initialize(val)
        @val = val
        @next = nil
      end
    end

    # @param {ListNode} headA
    # @param {ListNode} headB
    # @return {ListNode}
    def getIntersectionNode(headA, headB)
      return nil if headA.nil? || headB.nil?

      a_ptr = headA;
      b_ptr = headB;

      while(a_ptr != b_ptr) do
        a_ptr = a_ptr.nil? ? headB : a_ptr.next;
        b_ptr = b_ptr.nil? ? headA : b_ptr.next;
      end

      a_ptr
    end

  end
end
