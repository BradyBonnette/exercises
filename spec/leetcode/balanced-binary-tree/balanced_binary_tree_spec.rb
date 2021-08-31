require_relative '../../../leetcode/balanced-binary-tree/balanced_binary_tree.rb'
require_relative '../../../leetcode/_helpers/tree_parser.rb'

describe "Same Tree" do
  subject { LeetCode::BalancedBinaryTree.new }
  let(:parser) { LeetCode::Helpers::TreeParser }

  context "site examples" do
    it "should return true if root = [3,9,20,nil,nil,15,7]" do
      root = parser.parse([3,9,20,nil,nil,15,7])
      expect(subject.is_balanced(root)).to eql(true)
    end

    it "should return false if root = [1,2,2,3,3,nil,nil,4,4]" do
      root = parser.parse([1,2,2,3,3,nil,nil,4,4])
      expect(subject.is_balanced(root)).to eql(false)
    end

    it "should return true if root = [1,2,3,4,5,6,nil,8]" do
      root = parser.parse([1,2,3,4,5,6,nil,8])
      expect(subject.is_balanced(root)).to eql(true)
    end
  end

  it "should return true if root = [1]" do
    root = parser.parse([1])
    expect(subject.is_balanced(root)).to eql(true)
  end

  it "should return true if root = [1,2]" do
    root = parser.parse([1,2])
    expect(subject.is_balanced(root)).to eql(true)
  end

  it "should return true if root = [1,2,nil]" do
    root = parser.parse([1,2,nil])
    expect(subject.is_balanced(root)).to eql(true)
  end

  it "should return true if root = [1,nil,2]" do
    root = parser.parse([1,nil,2])
    expect(subject.is_balanced(root)).to eql(true)
  end

  it "should return false if root = [1,2,nil,3]" do
    root = parser.parse([1,2,nil,3])
    expect(subject.is_balanced(root)).to eql(false)
  end

  it "should return true if root = [1,2,3,nil]" do
    root = parser.parse([1,2,3,nil])
    expect(subject.is_balanced(root)).to eql(true)
  end

  it "should return true if root = [1,2,3]" do
    root = parser.parse([1,2,3])
    expect(subject.is_balanced(root)).to eql(true)
  end

  it "should return true if root = [1,2,3,4]" do
    root = parser.parse([1,2,3,4])
    expect(subject.is_balanced(root)).to eql(true)
  end

  it "should return true if root = [1,2,3,4,nil,nil,5]" do
    root = parser.parse([1,2,3,4,nil,nil,5])
    expect(subject.is_balanced(root)).to eql(true)
  end

  it "should return false if root = [1,2,3,4,nil,nil,5,6,nil,nil,nil,nil,7]" do
    root = parser.parse([1,2,3,4,nil,nil,5,6,nil,nil,nil,nil,7])
    expect(subject.is_balanced(root)).to eql(false)
  end
end
