require 'pry'

# https://leetcode.com/problems/minimum-depth-of-binary-tree/

module LeetCode
  class MinimumDepthOfBinaryTree
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
    def min_depth(root)
      return 0 if root.nil?
      queue = [root]
      height = 1

      # Perform an iterative BFS. The first time we reach a node that does not
      # have a left child nor right child then we have found the shortest path.
      while !queue.empty?
        queue_length = queue.size

        while queue_length > 0
          curr = queue.shift

          # If the current node is a leaf node, then we're done.
          if curr.left.nil? && curr.right.nil?
            return height
          end

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
    end

  end
end
