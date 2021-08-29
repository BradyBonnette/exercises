require_relative '../../../leetcode/sorted-array-to-bst/sorted_array_to_bst.rb'
require_relative '../../../leetcode/_helpers/tree_parser.rb'

describe "Sorted Aray to Binary Search Tree" do
  subject { LeetCode::SortedArrayToBst.new }
  let(:walker) { LeetCode::Helpers::BFSWalker.new }

  context "site examples" do
    # Input: nums = [-10,-3,0,5,9]
    # Output: [0,-3,9,-10,null,5]
    it "should return [0,-3,9,-10,null,5] when nums = [-10,-3,0,5,9]" do
      root = LeetCode::SortedArrayToBst::TreeNode.new(0)
      root.left = LeetCode::SortedArrayToBst::TreeNode.new(-3)
      root.left.left = LeetCode::SortedArrayToBst::TreeNode.new(-10)

      root.right = LeetCode::SortedArrayToBst::TreeNode.new(9)
      root.right.left = LeetCode::SortedArrayToBst::TreeNode.new(5)

      expect(
        walker.walk_to_array(subject.sorted_array_to_bst([-10,-3,0,5,9]))
      ).to eql(walker.walk_to_array(root))
    end

    # Input: nums = [1,3]
    # Output: [3,1]
    it "should return [3,1] when nums = [1,3]" do
      root = LeetCode::SortedArrayToBst::TreeNode.new(3)
      root.left = LeetCode::SortedArrayToBst::TreeNode.new(1)

      expect(
        walker.walk_to_array(subject.sorted_array_to_bst([1,3]))
      ).to eql(walker.walk_to_array(root))
    end
  end

  it "should return [2,1,3] when nums = [1,2,3]" do
    root = LeetCode::SortedArrayToBst::TreeNode.new(2)
    root.left = LeetCode::SortedArrayToBst::TreeNode.new(1)
    root.right = LeetCode::SortedArrayToBst::TreeNode.new(3)

    expect(
      walker.walk_to_array(subject.sorted_array_to_bst([1,2,3]))
    ).to eql(walker.walk_to_array(root))
  end

  it "should return [3,2,4,1] when nums = [1,2,3,4]" do
    root = LeetCode::SortedArrayToBst::TreeNode.new(3)
    root.left = LeetCode::SortedArrayToBst::TreeNode.new(2)
    root.right = LeetCode::SortedArrayToBst::TreeNode.new(4)
    root.left.left = LeetCode::SortedArrayToBst::TreeNode.new(1)

    expect(
      walker.walk_to_array(subject.sorted_array_to_bst([1,2,3,4]))
    ).to eql(walker.walk_to_array(root))
  end

end
