require 'pry'

# https://leetcode.com/problems/reverse-linked-list/

module LeetCode
  class ReverseLinkedList
    # Definition for singly-linked list.
    class ListNode
      attr_accessor :val, :next
      def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
      end
    end

    # @param {ListNode} head
    # @return {ListNode}
    def reverse_list_recursive(head)
      return head if head.nil? || head.next.nil?

      remaining = reverse_list(head.next)

      # Assume:  1 -> 2 -> 3
      # By the time we get here, head = 2 -> 3
      #                          remaining = 3
      # head.next.next = head:  2 -> 3 -> nil =>  2 <- 3
      # head.next = nil:        2 -> nil, 3 -> 2
      # remaining: 3 -> 2

      # next iteration:
      # head = 1 -> 2
      # remaining = 3 -> 2
      # head.next.next = head:  1 -> 2 => 2 -> 1
      # head.next = nil:   1 -> nil
      # remaining: 3 -> 2 -> 1
      # Done because we only stacked up to 2 -> 3

      head.next.next = head
      head.next = nil

      remaining
    end

    def reverse_list(head)
      temp = nil
      prev = nil
      current = head

      #     1 -> 2 -> 3
      # p t c

      #     1 -> 2 -> 3
      # p   c    t

      #  <- 1    2 -> 3
      # p   c    t

      #  <- 1    2 -> 3
      #     c    t
      #     p

      #  <- 1    2 -> 3
      #          c
      #     p    t

      #  <- 1    2 -> 3
      #          c    t
      #     p

      #  <- 1 <- 2 -> 3
      #          c    t
      #     p

      #  <- 1 <- 2 -> 3
      #          c    t
      #          p

      #  <- 1 <- 2 -> 3
      #               c
      #          p    t

      #  <- 1 <- 2 -> 3
      #               c  t
      #          p

      #  <- 1 <- 2 <- 3
      #               c  t
      #          p

      #  <- 1 <- 2 <- 3
      #               c  t
      #               p

      #  <- 1 <- 2 <- 3
      #                 c  t
      #               p

      #  <- 1 <- 2 <- 3
      #                 c  t
      #               p <- h

      while current
        temp = current.next
        current.next = prev
        prev = current
        current = temp
      end

      head = prev
    end
  end
end
