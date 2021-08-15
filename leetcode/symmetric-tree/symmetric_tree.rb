require 'pry'

# https://leetcode.com/problems/symmetric-tree/

module LeetCode
  class SymmetricTree
    # Definition for a binary tree node.
    # class TreeNode
    #     attr_accessor :val, :left, :right
    #     def initialize(val = 0, left = nil, right = nil)
    #         @val = val
    #         @left = left
    #         @right = right
    #     end
    # end

    class TreeNode
      attr_accessor :val, :left, :right
      def initialize(val = 0, left = nil, right = nil)
          @val = val
          @left = left
          @right = right
      end
    end

    # Helper method to turn an array of values into a tree
    def parse(data)
      return nil if data.empty?
      return LeetCode::SymmetricTree::TreeNode.new(data[0]) if data.length == 1

      root_queue = []
      root = LeetCode::SymmetricTree::TreeNode.new(data[0])
      root_queue.push(root)

      i = 1
      while i < data.size
        curr = root_queue[0]

        if !data[i].nil?
          curr.left = LeetCode::SymmetricTree::TreeNode.new(data[i])
          root_queue.push(curr.left)
        end

        i += 1

        if !data[i].nil?
          curr.right = LeetCode::SymmetricTree::TreeNode.new(data[i])
          root_queue.push(curr.right)
        end

        i += 1
        root_queue.shift
      end

      root
    end

    # @param {TreeNode} root
    # @return {Boolean}
    # TODO: This could probably be cleaned up a bit. The idea is that it will
    # create a full queue tree out of a possible partial tree. Note that this
    # is iterative, not recursive.
    def is_symmetric(root)
      return false if root.nil?
      return true if root.left.nil? && root.right.nil?

      node_queue = [root]
      node_counter = 0
      curr_level = 0

      while !node_queue.empty?
        curr_node = node_queue.shift
        node_counter += 1

        if curr_node.nil?
          node_queue.push(nil)
          node_queue.push(nil)
        else
          if curr_node.left.nil?
            node_queue.push(nil)
          else
            node_queue.push(curr_node.left)
          end

          if curr_node.right.nil?
            node_queue.push(nil)
          else
            node_queue.push(curr_node.right)
          end
        end

        if node_counter >= 2**curr_level
          lhs = 0
          rhs = node_queue.length-1
          nil_node_counter = 0
          while lhs < rhs
            # if they're not the same class, there's no way they're the same value
            return false if node_queue[lhs].class != node_queue[rhs].class

            nil_node_counter += 1 if node_queue[lhs].nil?
            nil_node_counter += 1 if node_queue[rhs].nil?

            if node_queue[lhs] && node_queue[rhs]
              # If there's ever a situation where lhs != rhs, then this tree is not
              # symmetrical. Bail.
              return false if node_queue[lhs].val != node_queue[rhs].val
            end

            lhs += 1
            rhs -= 1
          end

          # If we have all nils in the node queue (i.e. all "leaves") then we're done
          return true if nil_node_counter == node_queue.length

          curr_level += 1
          node_counter = 0
        end
      end
    end

  end
end
