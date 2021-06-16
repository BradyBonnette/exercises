require 'pry'
module LeetCode
  class AddBinary

    # @param {String} a
    # @param {String} b
    # @return {String}
    def add_binary(a, b)
      result = ""

      a_right = a.size-1
      b_right = b.size-1

      overflow = 0

      while (a_right >= 0 || b_right >= 0) || overflow == 1
        a_val = a_right < 0 ? 0 : a[a_right].to_i
        b_val = b_right < 0 ? 0 : b[b_right].to_i

        total = a_val + b_val + overflow

        case total
        when 0
          result.insert(0, "0")
          overflow = 0
        when 1
          result.insert(0, "1")
          overflow = 0
        when 2
          result.insert(0, "0")
          overflow = 1
        when 3
          result.insert(0, "1")
          overflow = 1
        end

        a_right -= 1
        b_right -= 1
      end

      result
    end

  end
end
