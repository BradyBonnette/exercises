require 'pry'

# https://leetcode.com/problems/same-tree/

module LeetCode
  class SameTree
    # @param {TreeNode} p
    # @param {TreeNode} q
    # @return {Boolean}
    def is_same_tree(p, q)
      return true if p.nil? && q.nil?
      return false if p.class != q.class

      p_queue = [p]
      q_queue = [q]

      while (!p_queue.empty? || !q_queue.empty?)
        p_root = p_queue.shift
        q_root = q_queue.shift

        return false if p_root.val != q_root.val

        # If p's left is not the same class as q's left, then we're done.
        # This is to basically check to see if one is a node and the other is
        # nil
        return false if p_root.left.class != q_root.left.class
        # Need to handle nil values, like [1,2,nil,4] in both trees
        p_queue.push(p_root.left) if p_root.left
        q_queue.push(q_root.left) if q_root.left

        # See note above, but for the right hand side
        return false if p_root.right.class != q_root.right.class
        p_queue.push(p_root.right) if p_root.right
        q_queue.push(q_root.right) if q_root.right

        return false if p_queue.size != q_queue.size
      end

      p_queue.size == q_queue.size
    end

  end
end
