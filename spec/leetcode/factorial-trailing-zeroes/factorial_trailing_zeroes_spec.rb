require_relative '../../../leetcode/factorial-trailing-zeroes/factorial_trailing_zeroes.rb'

describe "Factorial Trailing Zeroes" do
  subject { LeetCode::FactorialTrailingZeroes.new }

  context "site examples" do
    # Input: n = 3
    # Output: 0
    it "should return 0 when n = 3" do
      expect(subject.trailing_zeroes(3)).to eql(0)
    end

    # Input: n = 5
    # Output: 1
    it "should return 1 when n = 5" do
      expect(subject.trailing_zeroes(5)).to eql(1)
    end

    # Input: n = 0
    # Output: 0
    it "should return 0 when n = 0" do
      expect(subject.trailing_zeroes(0)).to eql(0)
    end
  end

  it "should return 0 when n = 1" do
    expect(subject.trailing_zeroes(1)).to eql(0)
  end

  it "should return 0 when n = 2" do
    expect(subject.trailing_zeroes(2)).to eql(0)
  end

  it "should work well with the highest number specified" do
    expect(subject.trailing_zeroes(10**4)).to eql(2499)
  end

  it "should work well with the highest number specified" do
    expect(subject.trailing_zeroes(10**3)).to eql(249)
  end

  it "should work well with the highest number specified" do
    expect(subject.trailing_zeroes(4210)).to eql(1050)
  end
end
