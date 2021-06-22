require 'pry'
module LeetCode
  class Sqrtx

    # @param {Integer} x
    # @return {Integer}
    def my_sqrt(x)
      return 0 if x == 0

      prev = 1
      ctr = 1

      while (curr = ctr*ctr) < 2_147_483_647
        if curr == x
          return ctr
        end

        if curr > x
          return prev
        end

        prev = ctr
        ctr += 1
      end

      prev
    end

  end
end
