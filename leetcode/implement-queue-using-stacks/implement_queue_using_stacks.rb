require 'pry'

# https://leetcode.com/problems/implement-queue-using-stacks/

module LeetCode

  class ImplementQueueUsingStacks

    # You must use only standard operations of a stack, which means only
    # push to top, peek/pop from top, size, and is empty operations are valid.
    # Depending on your language, the stack may not be supported natively.
    # You may simulate a stack using a list or deque (double-ended queue) as
    # long as you use only a stack's standard operations.

    def initialize()
      @stack = []
    end

=begin
    :type x: Integer
    :rtype: Void
     Pushes element x to the back of the queue.
=end
    def push(x)
      # Simulate stack push to top
      @stack.push(x)
    end

=begin
    :rtype: Integer
    Removes the element from the front of the queue and returns it.
=end
    def pop()
      return nil if @stack.empty?

      temp_stack = []

      while !@stack.empty?
        temp_stack.push(@stack.pop)
      end

      val = temp_stack.pop

      while !temp_stack.empty?
        @stack.push(temp_stack.pop)
      end

      val
    end

=begin
    :rtype: Integer
    Returns the element at the front of the queue.
=end
    def peek()
      return nil if @stack.empty?

      temp_stack = []

      while !@stack.empty?
        temp_stack.push(@stack.pop)
      end

      val = temp_stack.last

      while !temp_stack.empty?
        @stack.push(temp_stack.pop)
      end

      val
    end

=begin
    :rtype: Boolean
    Returns true if the queue is empty, false otherwise.
=end
    def empty()
      @stack.size == 0
    end
  end

end
