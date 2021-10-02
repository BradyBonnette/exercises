require 'pry'

# https://leetcode.com/problems/isomorphic-strings/

module LeetCode
  class IsomorphicStrings
    # @param {String} s
    # @param {String} t
    # @return {Boolean}
    def is_isomorphic(s, t)
      char_map_forward = {}
      char_map_reverse = {}

      (0..s.size-1).each do |s_idx|

        # check for forward mapping
        if char_map_forward[s[s_idx]].nil?
          char_map_forward[s[s_idx]] = t[s_idx]
        else
          return false if char_map_forward[s[s_idx]] != t[s_idx]
        end

        # check for reverse mapping
        if char_map_reverse[t[s_idx]].nil?
          char_map_reverse[t[s_idx]] = s[s_idx]
        else
          return false if  char_map_reverse[t[s_idx]] != s[s_idx]
        end
      end

      true
    end
  end
end
