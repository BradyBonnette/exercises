require_relative '../../../leetcode/maximum-depth-of-binary-tree/maximum_depth_of_binary_tree.rb'
require_relative '../../../leetcode/_helpers/tree_parser.rb'

describe "Same Tree" do
  subject { LeetCode::MaximumDepthOfBinaryTree.new }
  let(:parser) { LeetCode::Helpers::TreeParser }

  context "site examples" do
    it "should return 1 for root=[1,nil,nil]" do
      expect(subject.max_depth(
        parser.parse([1,nil,nil])
      )).to eql(1)
    end

    it "should return 2 for root=[1,2]" do
      expect(subject.max_depth(
        parser.parse([1,2])
      )).to eql(2)
    end

    it "should return 3 for root=[1,2,3,4]" do
      expect(subject.max_depth(
        parser.parse([1,2,3,4])
      )).to eql(3)
    end

    it "should return 3 for root=[1,2,3,4,nil]" do
      expect(subject.max_depth(
        parser.parse([1,2,3,4,nil])
      )).to eql(3)
    end

    it "should return 3 for root=[1,2,3,nil,nil,4,nil]" do
      expect(subject.max_depth(
        parser.parse([1,2,3,nil,nil,4,nil])
      )).to eql(3)
    end

    it "should return 3 for root=[3,9,20,nil,nil,15,7]" do
      expect(subject.max_depth(
        parser.parse([3,9,20,nil,nil,15,7])
      )).to eql(3)
    end

    it "should return 2 for root=[1,nil,2]" do
      expect(subject.max_depth(
        parser.parse([1,nil,2])
      )).to eql(2)
    end

    it "should return 0 for root=[]" do
      expect(subject.max_depth(
        parser.parse([])
      )).to eql(0)
    end

    it "should return 1 for root=[0]" do
      expect(subject.max_depth(
        parser.parse([0])
      )).to eql(1)
    end
  end

end
