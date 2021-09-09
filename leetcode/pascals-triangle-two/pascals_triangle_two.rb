require 'pry'

# https://leetcode.com/problems/pascals-triangle-ii/

module LeetCode
  class PascalsTriangleTwo
    # @param {Integer} row_index
    # @return {Integer[]}
    def get_row(row_index)
      return [1] if row_index == 0

      curr_row = [1,1]

      return curr_row if row_index == 1

      itr = 1

      while itr < row_index
        new_row = [1,1]
        window_left_idx = 0
        window_right_idx = 1
        insert_at_position = 1

        while window_right_idx < curr_row.size
          new_row.insert(insert_at_position, curr_row[window_left_idx] + curr_row[window_right_idx])
          window_left_idx += 1
          window_right_idx += 1
          insert_at_position += 1
        end

        curr_row = new_row
        itr += 1
      end

      curr_row
    end

  end
end
