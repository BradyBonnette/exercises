require 'pry'

# https://leetcode.com/problems/palindrome-linked-list/

module LeetCode
  class PalindromeLinkedList

    # Definition for singly-linked list.
    # class ListNode
    #     attr_accessor :val, :next
    #     def initialize(val = 0, _next = nil)
    #         @val = val
    #         @next = _next
    #     end
    # end
    # @param {ListNode} head
    # @return {Boolean}
    def is_palindrome(head)
      mid = head
      fast = head

      # Use something like Floyd's algorithm to find the middle of the list.
      # For each step that the slow pointer progresses, the fast pointer progresses
      # two times. By the time fast reaches the end, slow will be the middle.
      while fast.next and fast.next.next
        mid = mid.next
        fast = fast.next.next
      end

      # By the time we get here, head = beginning, slow = middle and fast = end.
      # We need to reverse everything from mid and up. Use traditional "reverse linked list"
      # algorithm.

      curr = mid
      temp = nil
      prev = nil

      while curr
        temp = curr.next
        curr.next = prev
        prev = curr
        curr = temp
      end

      # By the time we reach here. "prev" is the middle
      # before:
      #          a    b    c    d    e
      #   head = 1 -> 2 -> 3 -> 2 -> 1
      # after:
      #          a    b    c
      #   head = 1 -> 2 -> 3

      #          e    d    c
      #   mid =  1 <- 2 <- 3
      mid = prev

      # Loop through mid and head, and if each of their values match then it's a palindrome
      # If any one of their numbers do not match, it's not a palindrome
      while mid && head
        if mid.val != head.val
          return false
        end

        mid = mid.next
        head = head.next
      end

      true
    end

  end
end
