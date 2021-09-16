require_relative 'list_node'

module LeetCode
  module Helpers
    class ListParser
      def self.parse(data)
        return [] if data.nil?

        head = ListNode.new(data[0])
        curr = head

        (1..data.size-1).each do |idx|
          curr.next = ListNode.new(data[idx])
          curr = curr.next
        end

        head
      end
    end
  end
end
