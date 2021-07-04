require 'pry'
module LeetCode
  class ClimbingStairs

    # @param {Integer} n
    # @return {Integer}
    def climb_stairs(n)
      arr = Array.new(n+1, 0)
      arr[1] = 1
      arr[2] = 2

      for i in 1..n do
        arr[i+2] = arr[i] + arr[i+1]
      end

      return arr[n]

      # Some notes.
      # return climb_stairs(n-1) + climb_stairs(n-2)
      #   0   1   2
      # [ 0 | 1 | 2 ]

      #   0   1   2   3
      # [ 0 | 1 | 2 | 3 ]
      #       *   *

      #   0   1   2   3   4
      # [ 0 | 1 | 2 | 3 | 5 ]
      #           *   *

      #   0   1   2   3   4   5
      # [ 0 | 1 | 2 | 3 | 5 | 8 ]
      #           *   *

      #    2
      #  1   1

      #      3
      #   2     1
      #  1  1

      #      4
      #   3     2
      #  2  1  1  1
      # 1 1

    end

  end
end

# f = LeetCode::ClimbingStairs.new
# 1
# 2
# 3
# 5
# 8
# 13
# 10946
# 1836311903
# puts f.climb_stairs(1)
# puts f.climb_stairs(2)
# puts f.climb_stairs(3)
# puts f.climb_stairs(4)
# puts f.climb_stairs(5)
# puts f.climb_stairs(6)
# puts f.climb_stairs(20)
# puts f.climb_stairs(45)