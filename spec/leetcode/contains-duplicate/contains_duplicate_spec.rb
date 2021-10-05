require_relative '../../../leetcode/contains-duplicate/contains_duplicate.rb'

describe "Contains Duplicate" do
  subject { LeetCode::ContainsDuplicate.new }

  context "site examples" do
    # Input: nums = [1,2,3,1]
    # Output: true
    it "should return true when nums = [1,2,3,1]" do
      expect(subject.contains_duplicate([1,2,3,1])).to eql(true)
    end

    # Input: nums = [1,2,3,4]
    # Output: false
    it "should return true when nums = [1,2,3,4]" do
      expect(subject.contains_duplicate([1,2,3,4])).to eql(false)
    end

    # Input: nums = [1,1,1,3,3,4,3,2,4,2]
    # Output: true
    it "should return true when nums = [1,1,1,3,3,4,3,2,4,2]" do
      expect(subject.contains_duplicate([1,1,1,3,3,4,3,2,4,2])).to eql(true)
    end
  end

  it "should return false when nums = [1]" do
    expect(subject.contains_duplicate([1])).to eql(false)
  end

  it "should return false when nums = [1,2]" do
    expect(subject.contains_duplicate([1,2])).to eql(false)
  end

  it "should return true when nums = [2,2]" do
    expect(subject.contains_duplicate([2,2])).to eql(true)
  end

  it "should return true when nums = [2,2,1]" do
    expect(subject.contains_duplicate([2,2,1])).to eql(true)
  end

  it "should return true when nums = [1,2,2]" do
    expect(subject.contains_duplicate([1,2,2])).to eql(true)
  end

  it "should return false when nums = [1,2,3]" do
    expect(subject.contains_duplicate([1,2,3])).to eql(false)
  end
end
