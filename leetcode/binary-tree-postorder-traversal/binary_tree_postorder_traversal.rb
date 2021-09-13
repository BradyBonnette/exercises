require 'pry'


module LeetCode
  class BinaryTreePostorderTraversal
    # Definition for a binary tree node.
    class TreeNode
      attr_accessor :val, :left, :right
      def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
      end
    end

    # @param {TreeNode} root
    # @return {Integer[]}
    def postorder_traversal(root, arr=[])
      return [] if root.nil?

      postorder_traversal(root.left, arr)
      postorder_traversal(root.right, arr)
      arr << root.val
      arr
    end

  end
end
