module LeetCode
  module Helpers
    class TreeNode
      attr_accessor :val, :left, :right
      def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
      end
    end
  end
end
