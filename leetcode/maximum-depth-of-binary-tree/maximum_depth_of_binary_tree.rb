require 'pry'

# https://leetcode.com/problems/maximum-depth-of-binary-tree/

module LeetCode
  class MaximumDepthOfBinaryTree

    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val = 0, left = nil, right = nil)
    #         @val = val
    #         @left = left
    #         @right = right
    #     end
    # end
    # @param {TreeNode} root
    # @return {Integer}
    def max_depth(root)
      return 0 if root.nil?
      queue = [root]
      height = 0

      while !queue.empty?
        queue_length = queue.length

        while queue_length > 0
          curr = queue.shift

          if curr.left
            queue.push(curr.left)
          end

          if curr.right
            queue.push(curr.right)
          end

          queue_length -= 1
        end

        height += 1
      end

      height

      # recursive version:
      # if root.nil?
      #   return 0
      # end

      # [max_depth(root.left), max_depth(root.right)].max + 1
    end

  end
end
