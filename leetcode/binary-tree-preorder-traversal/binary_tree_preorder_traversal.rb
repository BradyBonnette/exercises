require 'pry'

# https://leetcode.com/problems/binary-tree-preorder-traversal/

module LeetCode
  class BinaryTreePreorderTraversal
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
    def preorder_traversal(root, arr=[])
      return [] if root.nil?

      arr << root.val
      preorder_traversal(root.left, arr)
      preorder_traversal(root.right, arr)
      arr
    end

  end
end
