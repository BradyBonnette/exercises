require_relative 'list_node'

module LeetCode
  module Helpers
    class ListParser
      def self.parse(data)
        return [] if data.nil?
        return data if data == []

        head = ListNode.new(data[0])
        curr = head

        (1..data.size-1).each do |idx|
          curr.next = ListNode.new(data[idx])
          curr = curr.next
        end

        head
      end

      def self.walk(head)
        return nil if head.nil?

        arr = []
        ptr = head

        while ptr
          arr << ptr.val
          ptr = ptr.next
        end

        arr
      end
    end
  end
end
