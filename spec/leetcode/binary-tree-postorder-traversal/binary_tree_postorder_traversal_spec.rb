require_relative '../../../leetcode/binary-tree-postorder-traversal/binary_tree_postorder_traversal.rb'
require_relative '../../../leetcode/_helpers/tree_parser.rb'

describe "Same Tree" do
  subject { LeetCode::BinaryTreePostorderTraversal.new }
  let(:parser) { LeetCode::Helpers::TreeParser }

  context "site examples" do
# Input: root = [1,null,2,3]
# Output: [3,2,1]
    it "should return [3,2,1] for root=[1,nil,2,3]" do
      expect(subject.postorder_traversal(
        parser.parse([1,nil,2,3])
      )).to eql([3,2,1])
    end

    # Input: root = []
    # Output: []
    it "should return [] for root=nil" do
      expect(subject.postorder_traversal(
        nil
      )).to eql([])
    end

# Input: root = [1]
# Output: [1]
    it "should return [1] for root=[1]" do
      expect(subject.postorder_traversal(
        parser.parse([1])
      )).to eql([1])
    end

# Input: root = [1,2]
# Output: [2,1]
    it "should return [2,1] for root=[1,2]" do
      expect(subject.postorder_traversal(
        parser.parse([1,2])
      )).to eql([2,1])
    end

# Input: root = [1,null,2]
# Output: [2,1]
    it "should return [2,1] for root=[1,nil,2]" do
      expect(subject.postorder_traversal(
        parser.parse([1,nil,2])
      )).to eql([2,1])
    end
  end

  it "should return [4,5,2,6,7,3,1] for root=[1,2,3,4,5,6,7]" do
    expect(subject.postorder_traversal(
      parser.parse([1,2,3,4,5,6,7])
    )).to eql([4,5,2,6,7,3,1])
  end

  it "should not take a long time for a large dataset" do
    expect(subject.postorder_traversal(
      parser.parse([*1..100])
    )).to eql([
      64,
      65,
      32,
      66,
      67,
      33,
      16,
      68,
      69,
      34,
      70,
      71,
      35,
      17,
      8,
      72,
      73,
      36,
      74,
      75,
      37,
      18,
      76,
      77,
      38,
      78,
      79,
      39,
      19,
      9,
      4,
      80,
      81,
      40,
      82,
      83,
      41,
      20,
      84,
      85,
      42,
      86,
      87,
      43,
      21,
      10,
      88,
      89,
      44,
      90,
      91,
      45,
      22,
      92,
      93,
      46,
      94,
      95,
      47,
      23,
      11,
      5,
      2,
      96,
      97,
      48,
      98,
      99,
      49,
      24,
      100,
      50,
      51,
      25,
      12,
      52,
      53,
      26,
      54,
      55,
      27,
      13,
      6,
      56,
      57,
      28,
      58,
      59,
      29,
      14,
      60,
      61,
      30,
      62,
      63,
      31,
      15,
      7,
      3,
      1
    ])
  end

end
