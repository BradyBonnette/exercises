require_relative '../../../leetcode/minimum-depth-of-binary-tree/minimum_depth_of_binary_tree.rb'
require_relative '../../../leetcode/_helpers/tree_parser.rb'

describe "Same Tree" do
  subject { LeetCode::MinimumDepthOfBinaryTree.new }
  let(:parser) { LeetCode::Helpers::TreeParser }

  context "site examples" do
    it "should return 2 for root=[3,9,20,nil,nil,15,7]" do
      expect(subject.min_depth(
        parser.parse([3,9,20,nil,nil,15,7])
      )).to eql(2)
    end

    it "should return 2 for root=[2,nil,3,nil,4,nil,5,nil,6]" do
      expect(subject.min_depth(
        parser.parse([2,nil,3,nil,4,nil,5,nil,6])
      )).to eql(5)
    end
  end

  it "should return 0 for root=[]" do
    expect(subject.min_depth(nil)).to eql(0)
  end

  it "should return 1 for root=[1]" do
    expect(subject.min_depth(
      parser.parse([1])
    )).to eql(1)
  end

  it "should return 2 for root=[1,2]" do
    expect(subject.min_depth(
      parser.parse([1,2])
    )).to eql(2)
  end

  it "should return 2 for root=[1,2,3]" do
    expect(subject.min_depth(
      parser.parse([1,2,3])
    )).to eql(2)
  end

  it "should return 2 for root=[1,nil,3]" do
    expect(subject.min_depth(
      parser.parse([1,nil,3])
    )).to eql(2)
  end

  it "should return 2 for root=[1,2,3,4]" do
    expect(subject.min_depth(
      parser.parse([1,2,3,4])
    )).to eql(2)
  end

  it "should return 2 for root=[1,2,3,nil,4]" do
    expect(subject.min_depth(
      parser.parse([1,2,3,nil,4])
    )).to eql(2)
  end

  it "should return 3 for root=[1,2,nil,3,nil]" do
    expect(subject.min_depth(
      parser.parse([1,2,nil,3,nil])
    )).to eql(3)
  end

  it "should return 3 for root=[1,nil,2,3,nil]" do
    expect(subject.min_depth(
      parser.parse([1,nil,2,3,nil])
    )).to eql(3)
  end
end
