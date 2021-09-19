require_relative '../../../leetcode/majority-element/majority_element.rb'

describe "Majority Element" do
  subject { LeetCode::MajorityElement.new }

  context "site examples" do
    # Input: nums = [3,2,3]
    # Output: 3
    it "should return 3 when nums = [3,2,3]" do
      expect(subject.majority_element([3,2,3])).to eql(3)
    end

    # Input: nums = [2,2,1,1,1,2,2]
    # Output: 2
    it "should return 2 when nums = [2,2,1,1,1,2,2]" do
      expect(subject.majority_element([2,2,1,1,1,2,2])).to eql(2)
    end
  end

  it "should return -1 when nums = [-1,2,-1]" do
    expect(subject.majority_element([-1,2,-1])).to eql(-1)
  end

  it "should return 5 when nums = [2,5,5,2,5,5]" do
    expect(subject.majority_element([2,5,5,2,5,5])).to eql(5)
  end

  it "should return 8 when nums = [1,2,3,8,8,8,8,8]" do
    expect(subject.majority_element([1,2,3,8,8,8,8,8])).to eql(8)
  end

  it "should perform well when maximum number of nums is given" do
    max = 5*10**4
    arr = []

    max.times {|i| i%2 == 0 ? arr << 8 : arr << 2 }

    arr[-1] = 8

    expect(subject.majority_element(arr)).to eql(8)
  end
end
