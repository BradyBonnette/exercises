require 'pry'

# https://leetcode.com/problems/excel-sheet-column-title/

module LeetCode
  class ExcelSheetColumnTitle

    # @param {Integer} column_number
    # @return {String}
    def convert_to_title(column_number)
      quotient = column_number
      result = ""

      while quotient > 0
        remainder = quotient%26
        quotient = quotient/26
        if remainder == 0
          result.insert(0, "Z")
          quotient -= 1
        else
          result.insert(0, (remainder+64).chr)
        end
      end

      result
    end

  end
end
