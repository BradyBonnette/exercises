require 'pry'

# https://leetcode.com/problems/excel-sheet-column-number/

module LeetCode
  class ExcelSheetColumnNumber

    # @param {String} column_title
    # @return {Integer}
    def title_to_number(column_title)
      result = 0
      pow = 0
      i = column_title.size-1

      while i >= 0
        # A.ord = 65, 65%32 = 1
        # B.ord = 66, 66%32 = 2
        # ...
        result += (column_title[i].ord%32)*26**pow
        pow += 1
        i -= 1
      end

      result
    end

  end
end
