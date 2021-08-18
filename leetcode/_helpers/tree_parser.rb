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
  end
end
