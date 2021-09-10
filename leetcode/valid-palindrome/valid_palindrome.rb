require 'pry'

# https://leetcode.com/problems/valid-palindrome/

module LeetCode
  class ValidPalindrome

    # @param {String} s
    # @return {Boolean}
    def is_palindrome(s)
      lookup = {}

      (48..57).each {|num_chr| char = num_chr.chr ;lookup[char] = char}
      (65..90).each {|up_char| lookup[up_char.chr] = (up_char + 32).chr}
      (97..122).each {|low_char| char = low_char.chr; lookup[char] = char}

      left_idx = 0
      right_idx = s.size-1

      while left_idx < right_idx
        curr_left_char = lookup[s[left_idx]]
        curr_right_char = lookup[s[right_idx]]

        while !curr_left_char && left_idx < s.size
          left_idx += 1
          curr_left_char = lookup[s[left_idx]]
        end

        while !curr_right_char && right_idx > 0
          right_idx -= 1
          curr_right_char = lookup[s[right_idx]]
        end

        return false if curr_left_char != curr_right_char

        left_idx += 1
        right_idx -= 1
      end

      true
    end

  end
end
