require_relative '../../../leetcode/path-sum/path_sum.rb'
require_relative '../../../leetcode/_helpers/tree_parser.rb'

describe "Path Sum" do
  subject { LeetCode::PathSum.new }
  let(:parser) { LeetCode::Helpers::TreeParser }

  context "site examples" do
    # Input: root = [5,4,8,11,null,13,4,7,2,null,null,null,1], targetSum = 22
    # Output: true
    it "should return true if root=[5,4,8,11,nil,13,4,7,2,nil,nil,nil,1] and target_sum = 22" do
      expect(subject.has_path_sum(
        parser.parse([5,4,8,11,nil,13,4,7,2,nil,nil,nil,1]),
        22
      )).to eql(true)
    end

    # Input: root = [1,2,3], targetSum = 5
    # Output: false
    it "should return true if root=[1,2,3] and target_sum = 5" do
      expect(subject.has_path_sum(
        parser.parse([1,2,3]),
        5
      )).to eql(false)
    end
  end

  it "should return false if root=[1] and target_sum = 2" do
    expect(subject.has_path_sum(
      parser.parse([1]),
      2
    )).to eql(false)
  end

  it "should return true if root=[1] and target_sum = 1" do
    expect(subject.has_path_sum(
      parser.parse([1]),
      1
    )).to eql(true)
  end

  it "should return false if root=[1,2] and target_sum = 1" do
    expect(subject.has_path_sum(
      parser.parse([1,2]),
      1
    )).to eql(false)
  end

  it "should return true if root=[1,2] and target_sum = 3" do
    expect(subject.has_path_sum(
      parser.parse([1,2]),
      3
    )).to eql(true)
  end

  it "should return true if root=[1,nil,2] and target_sum = 3" do
    expect(subject.has_path_sum(
      parser.parse([1,nil,2]),
      3
    )).to eql(true)
  end

  it "should return false if root=[1,nil,2] and target_sum = 5" do
    expect(subject.has_path_sum(
      parser.parse([1,nil,2]),
      5
    )).to eql(false)
  end

  it "should return true if root=[1,2,2] and target_sum = 3" do
    expect(subject.has_path_sum(
      parser.parse([1,2,2]),
      3
    )).to eql(true)
  end

  it "should return false if root=[1,2,2] and target_sum = 4" do
    expect(subject.has_path_sum(
      parser.parse([1,2,2]),
      4
    )).to eql(false)
  end

  it "should return true if root=[1,2,3,nil,5] and target_sum = 8" do
    expect(subject.has_path_sum(
      parser.parse([1,2,3,nil,5]),
      8
    )).to eql(true)
  end

  it "should return false if root=[1,2,3,nil,5] and target_sum = 10" do
    expect(subject.has_path_sum(
      parser.parse([1,2,3,nil,5]),
      10
    )).to eql(false)
  end
end
