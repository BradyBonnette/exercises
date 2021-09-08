require 'pry'

# https://leetcode.com/problems/pascals-triangle/

module LeetCode
  class PascalsTriangle
    # @param {Integer} num_rows
    # @return {Integer[][]}
    def generate(num_rows)
      return [[1]] if num_rows == 1

      rows = [[1], [1,1]]

      return rows if num_rows == 2

      (3..num_rows).each do |row_num|
        new_row = [1,1]
        previous_row = rows[row_num-2]

        window_left_idx = 0
        window_right_idx = 1
        insert_at_position = 1

        while window_right_idx < previous_row.size
          new_row.insert(insert_at_position, previous_row[window_left_idx] + previous_row[window_right_idx])
          window_left_idx += 1
          window_right_idx += 1
          insert_at_position += 1
        end

        rows.push(new_row)
      end

      rows
    end

  end
end
