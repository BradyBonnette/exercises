require_relative '../../../leetcode/contains-duplicate-two/contains_duplicate_two.rb'

describe "Contains Duplicate II" do
  subject { LeetCode::ContainsDuplicateTwo.new }

  context "site examples" do
    # Input: nums = [1,2,3,1], k = 3
    # Output: true
    it "should return true when nums = [1,2,3,1] and k=3" do
      expect(subject.contains_nearby_duplicate([1,2,3,1], 3)).to eql(true)
    end

    # Input: nums = [1,0,1,1], k = 1
    # Output: true
    it "should return true when nums = [1,0,1,1] and k=1" do
      expect(subject.contains_nearby_duplicate([1,0,1,1], 1)).to eql(true)
    end

    # Input: nums = [1,2,3,1,2,3], k = 2
    # Output: false
    it "should return false when nums = [1,2,3,1,2,3] and k=2" do
      expect(subject.contains_nearby_duplicate([1,2,3,1,2,3], 2)).to eql(false)
    end
  end

  it "should return false when nums = [1] and k = 1" do
    expect(subject.contains_nearby_duplicate([1], 1)).to eql(false)
  end

  it "should return false when nums = [1,2] and k = 1" do
    expect(subject.contains_nearby_duplicate([1,2], 1)).to eql(false)
  end

  it "should return true when nums = [1,1] and k = 1" do
    expect(subject.contains_nearby_duplicate([1,1], 1)).to eql(true)
  end

  it "should return true when nums = [1,1] and k = 2" do
    expect(subject.contains_nearby_duplicate([1,1], 2)).to eql(true)
  end

  it "should return true when nums = [1,2,3,1,5,1] and k = 2" do
    expect(subject.contains_nearby_duplicate([1,2,8,9,3,1,5,1], 2)).to eql(true)
  end
end
