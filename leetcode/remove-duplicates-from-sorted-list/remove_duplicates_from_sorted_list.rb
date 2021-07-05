require 'pry'

class RemoveDuplicatesFromSortedListListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

module LeetCode
  class RemoveDuplicatesFromSortedList
    # Definition for singly-linked list.
    # class ListNode
    #     attr_accessor :val, :next
    #     def initialize(val = 0, _next = nil)
    #         @val = val
    #         @next = _next
    #     end
    # end
    # @param {ListNode} head
    # @return {ListNode}

    # The number of nodes in the list is in the range [0, 300].
    # -100 <= Node.val <= 100
    # The list is guaranteed to be sorted in ascending order.

    def delete_duplicates(head)
      return [] if head.nil?

      deduped_array = []

      while head
        if deduped_array.empty? || deduped_array.last != head.val
          deduped_array.push(head.val)
        end

        head = head.next
      end

      deduped_array
    end
  end
end
