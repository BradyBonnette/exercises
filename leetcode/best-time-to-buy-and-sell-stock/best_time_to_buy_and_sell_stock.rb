require 'pry'

# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

module LeetCode
  class BestTimeToBuyAndSellStock

    # @param {Integer[]} prices
    # @return {Integer}
    def max_profit(prices)
      curr_idx = 0
      low_idx = 0
      largest_diff = 0

      while curr_idx < prices.size
        if prices[curr_idx] < prices[low_idx]
          low_idx = curr_idx
        end

        curr_diff = (prices[low_idx] - prices[curr_idx]).abs

        if curr_diff > largest_diff
          largest_diff = curr_diff
        end

        curr_idx += 1
      end

      largest_diff
    end

  end
end
