require_relative '../../../leetcode/symmetric-tree/symmetric_tree.rb'
require_relative '../../../leetcode/_helpers/tree_parser.rb'

describe "Same Tree" do
  subject { LeetCode::SymmetricTree.new }
  let(:parser) { LeetCode::Helpers::TreeParser }

  it "should return true for root=[1]" do
    expect(subject.is_symmetric(
      parser.parse([1])
    )).to eql(true)
  end

  it "should return true for root=[1,nil]" do
    expect(subject.is_symmetric(
      parser.parse([1,nil])
    )).to eql(true)
  end

  it "should return false for root=[1,nil,2]" do
    expect(subject.is_symmetric(
      parser.parse([1,nil,2])
    )).to eql(false)
  end

  it "should return false for root=[1,2,nil]" do
    expect(subject.is_symmetric(
      parser.parse([1,2,nil])
    )).to eql(false)
  end

  it "should return false for root=[1,2,3]" do
    expect(subject.is_symmetric(
      parser.parse([1,2,3])
    )).to eql(false)
  end

  it "should return true for root=[1,2,2]" do
    expect(subject.is_symmetric(
      parser.parse([1,2,2])
    )).to eql(true)
  end

  it "should return true for root=[1,2,2,3,nil,nil,3]" do
    expect(subject.is_symmetric(
      parser.parse([1,2,2,3,nil,nil,3])
    )).to eql(true)
  end

  it "should return false for root=[1,2,2,3,3,nil,3]" do
    expect(subject.is_symmetric(
      parser.parse([1,2,2,3,3,nil,3])
    )).to eql(false)
  end

  it "should return true for root=[1,2,2,3,3,3,3]" do
    expect(subject.is_symmetric(
      parser.parse([1,2,2,3,3,3,3])
    )).to eql(true)
  end

  it "should return false for root=[1,2,2,3,3,3,3,nil,4]" do
    expect(subject.is_symmetric(
      parser.parse([1,2,2,3,3,3,3,nil,4])
    )).to eql(false)
  end

  context "site examples" do
    it "should return true for root=[1,2,2,3,4,4,3]" do
      expect(subject.is_symmetric(
        parser.parse([1,2,2,3,4,4,3])
      )).to eql(true)
    end

    it "should return false for root=[1,2,2,nil,3,nil,3]" do
      expect(subject.is_symmetric(
        parser.parse([1,2,2,nil,3,nil,3])
      )).to eql(false)
    end

    it "should return true for root=[3,4,4,5,nil,nil,5,6,nil,nil,6]" do
      expect(subject.is_symmetric(
        parser.parse([3,4,4,5,nil,nil,5,6,nil,nil,6])
      )).to eql(true)
      #       3
      #      / \
      #     4   4
      #    / \ / \
      #   5  - -  5
      #  / \     / \
      # 6   -   -   6
    end

    it "should return true for root=[2,3,3,4,nil,nil,4,nil,5,5,nil,nil,6,6,nil,7,8,8,7,9,0,0,1,1,0,0,9]" do
      expect(subject.is_symmetric(
        parser.parse([2,3,3,4,nil,nil,4,nil,5,5,nil,nil,6,6,nil,7,8,8,7,9,0,0,1,1,0,0,9])
      )).to eql(true)

      #              2
      #        /          \
      #       3            3
      #      / \          /  \
      #     4   -        -    4
      #    / \               / \
      #   -  5              5   -
      #     / \            / \
      #    -   6          6   -
      #       / \        / \
      #      7  8       8   7
      #    / \ / \     / \ / \
      #   9  0 0  1   1  0 0  9
    end

  end

end
