require 'pry'

# https://leetcode.com/problems/min-stack/

module LeetCode
  class MinStack

=begin
    initialize your data structure here.
=end
    def initialize()
      @current_min = nil
      @stack = []
    end

=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
      data = OpenStruct.new(val: val, captured_min: nil)

      if @current_min.nil?
        @current_min = val
      else
        @current_min = val < @current_min ? val : @current_min
      end

      data.captured_min = @current_min
      @stack.push(data)
    end

=begin
    :rtype: Void
=end
    def pop()
      return nil if @stack.empty?

      stack_top = @stack.pop

      if @stack.last
        @current_min = @stack.last.captured_min
      else
        @current_min = nil
      end
      stack_top.val
    end

=begin
    :rtype: Integer
=end
    def top()
      return nil if @stack.empty?

      @stack.last.val
    end

=begin
    :rtype: Integer
=end
    def get_min()
      @current_min
    end

  end
end
