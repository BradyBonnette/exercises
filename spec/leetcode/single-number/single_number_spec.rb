require_relative '../../../leetcode/single-number/single_number.rb'

describe "Single Number" do
  subject { LeetCode::SingleNumber.new }

  context "site examples" do
    it "should return 1 when nums = [2,2,1]" do
      expect(subject.single_number([2,2,1])).to eql(1)
    end

    it "should return 4 when nums = [4,1,2,1,2]" do
      expect(subject.single_number([4,1,2,1,2])).to eql(4)
    end

    it "should return 1 when nums = [1]" do
      expect(subject.single_number([1])).to eql(1)
    end
  end

  it "should return in a reasonable time when nums length is large" do
    nums = []
    15000.times do |i|
      nums << i
      nums << i
    end

    nums.pop
    nums[nums.size-1] = -42

    expect(subject.single_number(nums)).to eql(-42)
  end

end
