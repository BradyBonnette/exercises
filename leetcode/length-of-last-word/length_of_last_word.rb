require 'pry'
module LeetCode
  class LengthOfLastWord
    # @param {String} s
    # @return {Integer}
    def length_of_last_word(s)
      # We could use string#split here, but the idea is to probably use array
      # indexes where possible.

      # If we have a one char string, return 0 if empty or the character itself.
      if s.length == 1
        if s[0] == " "
          return 0
        end

        return 1
      end

      left_idx = 0
      right_idx = 0
      i = 0

      while i < s.size do
        if s[i] == ' '
          while s[i] == ' ' && i < s.size
            i += 1
          end

          if i == s.size
            break
          end

          left_idx = i
          right_idx = i
        end

        right_idx += 1
        i += 1
      end

      right_idx - left_idx
    end

  end
end
