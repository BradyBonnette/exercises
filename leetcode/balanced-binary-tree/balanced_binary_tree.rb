require 'pry'

module LeetCode
  class BalancedBinaryTree
    class TreeNode
      attr_accessor :val, :left, :right
      def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
      end
    end

    # @param {TreeNode} root
    # @return {Boolean}
    def is_balanced(root)
      # Make an anonymous proc for height, trying to keep everything within
      # the #is_balanced method
      _height = ->(root) do
        if root.nil?
          return 0
        else
          return 1 + [_height.call(root.left), _height.call(root.right)].max
        end
      end


      root.nil? || # an empty node is balanced
        is_balanced(root.left) && # recursive call to the left tree
        is_balanced(root.right) && # recursive call to the right tree
        (_height.call(root.left) -            # If the height of the left tree
          _height.call(root.right)).abs <= 1  # does not differ from the height of
                                              # the right tree by more than one
    end

  end
end
