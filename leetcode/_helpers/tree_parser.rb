require_relative 'tree_node'

module LeetCode
  module Helpers
    class TreeParser
      def self.parse(data)
        return nil if data.empty?
        return TreeNode.new(data[0]) if data.length == 1

        root_queue = []
        root = TreeNode.new(data[0])
        root_queue.push(root)

        i = 1
        while i < data.size
          curr = root_queue[0]

          if !data[i].nil?
            curr.left = TreeNode.new(data[i])
            root_queue.push(curr.left)
          end

          i += 1

          if !data[i].nil?
            curr.right = TreeNode.new(data[i])
            root_queue.push(curr.right)
          end

          i += 1
          root_queue.shift
        end

        root
      end
    end

    class BFSWalker
      # Walk a tree in breadth first search order. Return the array. Assume
      # tree can be incomplete
      #        0
      #      /   \
      #    -3      9
      #   /  \    /
      #  -10  *  5
      #
      # [0, -3. 9, 10, nil, 5]

      def walk_to_array(root)
        node_queue = [root]
        values = [root.val]
        curr_idx = 0

        while !node_queue.empty?
          curr = node_queue.shift

          if curr.left.nil? && curr.right.nil?
            curr_idx += 1
            next
          end

          if curr.left
            node_queue.push(curr.left)
            values[2*curr_idx+1] = curr.left.val
          else
            values[2*curr_idx+1] = nil
          end

          if curr.right
            node_queue.push(curr.right)
            values[2*curr_idx+2] = curr.right.val
          else
            values[2*curr_idx+2] = nil
          end

          curr_idx += 1
        end

        values
      end

    end
  end
end
