require_relative '../../../leetcode/binary-tree-preorder-traversal/binary_tree_preorder_traversal.rb'
require_relative '../../../leetcode/_helpers/tree_parser.rb'

describe "Same Tree" do
  subject { LeetCode::BinaryTreePreorderTraversal.new }
  let(:parser) { LeetCode::Helpers::TreeParser }

  context "site examples" do
# Input: root = [1,null,2,3]
# Output: [1,2,3]
    it "should return [1,2,3] for root=[1,nil,2,3]" do
      expect(subject.preorder_traversal(
        parser.parse([1,nil,2,3])
      )).to eql([1,2,3])
    end

# Input: root = []
# Output: []
    it "should return [] for root=nil" do
      expect(subject.preorder_traversal(
        nil
      )).to eql([])
    end

# Input: root = [1]
# Output: [1]
    it "should return [1] for root=[1]" do
      expect(subject.preorder_traversal(
        parser.parse([1])
      )).to eql([1])
    end

# Input: root = [1,2]
# Output: [1,2]
    it "should return [1,2] for root=[1,2]" do
      expect(subject.preorder_traversal(
        parser.parse([1,2])
      )).to eql([1,2])
    end

# Input: root = [1,null,2]
# Output: [1,2]
    it "should return [1,2] for root=[1,nil,2]" do
      expect(subject.preorder_traversal(
        parser.parse([1,nil,2])
      )).to eql([1,2])
    end
  end

  it "should return [1,2,4,5,3,6,7] for root=[1,2,3,4,5,6,7]" do
    expect(subject.preorder_traversal(
      parser.parse([1,2,3,4,5,6,7])
    )).to eql([1,2,4,5,3,6,7])
  end

  it "should return [1,2,4,5,3,6,7] for root=[1,2,3,4,5,6,7]" do
    expect(subject.preorder_traversal(
      parser.parse([1,2,nil,3,4])
    )).to eql([1,2,3,4])
  end

  it "should not take a long time for a large dataset" do
    expect(subject.preorder_traversal(
      parser.parse([*1..100])
    )).to eql([
      1,
      2,
      4,
      8,
      16,
      32,
      64,
      65,
      33,
      66,
      67,
      17,
      34,
      68,
      69,
      35,
      70,
      71,
      9,
      18,
      36,
      72,
      73,
      37,
      74,
      75,
      19,
      38,
      76,
      77,
      39,
      78,
      79,
      5,
      10,
      20,
      40,
      80,
      81,
      41,
      82,
      83,
      21,
      42,
      84,
      85,
      43,
      86,
      87,
      11,
      22,
      44,
      88,
      89,
      45,
      90,
      91,
      23,
      46,
      92,
      93,
      47,
      94,
      95,
      3,
      6,
      12,
      24,
      48,
      96,
      97,
      49,
      98,
      99,
      25,
      50,
      100,
      51,
      13,
      26,
      52,
      53,
      27,
      54,
      55,
      7,
      14,
      28,
      56,
      57,
      29,
      58,
      59,
      15,
      30,
      60,
      61,
      31,
      62,
      63
    ])
  end

end
