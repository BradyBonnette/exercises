require 'pry'

# https://leetcode.com/problems/binary-tree-inorder-traversal/

module LeetCode
  class BinaryTreeInorderTraversalTreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
    end
  end

  class BinaryTreeInorderTraversal
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
    # @return {Integer[]}

    # Helper method to parse data from array into tree, mainly used for specs and testing
    def parse(data)
      return nil if data.empty?
      return BinaryTreeInorderTraversalTreeNode.new(data[0]) if data.count == 1

      root = BinaryTreeInorderTraversalTreeNode.new(data[0])

      for i in 1..data.size-1 do
        root_stack = []
        root_stack.push(root)

        while !root_stack.empty?
          curr = root_stack.shift

          if curr.left
            if curr.left.val != nil
              root_stack.push(curr.left)
            end
          else
            curr.left = BinaryTreeInorderTraversalTreeNode.new(data[i])
            break
          end

          if curr.right
            if curr.right.val != nil
              root_stack.push(curr.right)
            end
          else
            curr.right = BinaryTreeInorderTraversalTreeNode.new(data[i])
            break
          end

        end
      end

      root
    end

    def inorder_traversal(root)
      visited_values = []
      node_stack = []
      curr_node = root

      while !curr_node.nil? || !node_stack.empty?
        if curr_node != nil
          node_stack.push(curr_node)
          curr_node = curr_node.left
        else
          curr_node = node_stack.pop
          if curr_node.val != nil
            visited_values << curr_node.val
          end
          curr_node = curr_node.right
        end
      end

      visited_values
    end

  end
end
