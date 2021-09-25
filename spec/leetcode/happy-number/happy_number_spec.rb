require_relative '../../../leetcode/happy-number/happy_number.rb'

describe "Happy Number" do
  subject { LeetCode::HappyNumber.new }

  context "site examples" do
    # Input: n = 19
    # Output: true
    # Explanation:
    # 12 + 92 = 82
    # 82 + 22 = 68
    # 62 + 82 = 100
    # 12 + 02 + 02 = 1
    it " should return true if n = 19" do
      expect(subject.is_happy(19)).to eql(true)
    end

    # Example 2:
    # Input: n = 2
    # Output: false
    it "should return false if n = 2" do
      expect(subject.is_happy(2)).to eql(false)
    end
  end

  it "should return true if n = 1" do
    expect(subject.is_happy(1)).to eql(true)
  end

  it "should work with the largest value specified" do
    expect(subject.is_happy(2**31-1)).to eql(false)
  end

  it "should return false if n = 3" do
    expect(subject.is_happy(3)).to eql(false)
  end

  it "should return false if n = 4" do
    expect(subject.is_happy(4)).to eql(false)
  end

  it "should return true if n = 7" do
    expect(subject.is_happy(7)).to eql(true)
  end

  it "should return false if n = 8" do
    expect(subject.is_happy(8)).to eql(false)
  end

  it "should return false if n = 43" do
    expect(subject.is_happy(43)).to eql(false)
  end

  it "should return true if n = 44" do
    expect(subject.is_happy(44)).to eql(true)
  end

  it "should return false if n = 45" do
    expect(subject.is_happy(45)).to eql(false)
  end
end
