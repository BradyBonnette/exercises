require 'pry'

# https://leetcode.com/problems/binary-tree-inorder-traversal/

module LeetCode
  class BinaryTreeInorderTraversal
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
