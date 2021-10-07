require 'pry'

# https://leetcode.com/problems/implement-stack-using-queues/

module LeetCode
  class ImplementStackUsingQueues
    def initialize()
      @queue = []
    end

=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
      size = @queue.size
      @queue << x

      while size >= 0
        @queue << @queue[0]
        @queue.shift
        size -= 1
      end
    end

=begin
    :rtype: Integer
=end
    def pop()
      # This simulates "pop"
      @queue.pop
    end

=begin
    :rtype: Integer
=end
    def top()
      # This simulates "peek"
      @queue.last
    end

=begin
    :rtype: Boolean
=end
    def empty()
      @queue.size == 0
    end

  end
end
