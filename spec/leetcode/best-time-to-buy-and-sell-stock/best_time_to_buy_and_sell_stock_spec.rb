require_relative '../../../leetcode/best-time-to-buy-and-sell-stock/best_time_to_buy_and_sell_stock.rb'

describe "Best Time to Buy and Sell Stock" do
  subject { LeetCode::BestTimeToBuyAndSellStock.new }

  context "site examples" do
    it "should return 5 when prices = [7,1,5,3,6,4]" do
      expect(subject.max_profit([7,1,5,3,6,4])).to eql(5)
    end

    it "should return 0 when prices = [7,6,4,3,1]" do
      expect(subject.max_profit([7,6,4,3,1])).to eql(0)
    end
  end

  it "should return 0 for a single price in the array" do
    expect(subject.max_profit([1])).to eql(0)
  end

  it "should return 0 when prices = [2,1]" do
    expect(subject.max_profit([2,1])).to eql(0)
  end

  it "should return 3 when prices = [1,4]" do
    expect(subject.max_profit([1,4])).to eql(3)
  end

  it "should return 0 when prices = [3,1,1]" do
    expect(subject.max_profit([3,1,1])).to eql(0)
  end

  it "should return 2 when prices = [1,3,1]" do
    expect(subject.max_profit([1,3,1])).to eql(2)
  end

  it "should return 2 when prices = [1,1,3]" do
    expect(subject.max_profit([1,1,3])).to eql(2)
  end

  it "should return 2 when prices = [3,1,3]" do
    expect(subject.max_profit([3,1,3])).to eql(2)
  end

  it "should return 5 when prices = [1,1,1,1,1,1,1,1,1,6]" do
    expect(subject.max_profit([1,1,1,1,1,1,1,1,1,6])).to eql(5)
  end

  it "should return within a reasonable time when the array is 10**5 items" do
    arr = []

    (10**5).times.each_with_index do |a,i|
      arr << i
    end

    expect(subject.max_profit(arr)).to eql(99999) # 1 = lowest, 10000 = highest
  end
end
