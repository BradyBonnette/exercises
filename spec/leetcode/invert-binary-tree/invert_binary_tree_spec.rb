require_relative '../../../leetcode/invert-binary-tree/invert_binary_tree.rb'
require_relative '../../../leetcode/_helpers/tree_parser.rb'

describe "Invert Binary Tree" do
  subject { LeetCode::InvertBinaryTree.new }
  let(:parser) { LeetCode::Helpers::TreeParser }
  let(:walker) { LeetCode::Helpers::BFSWalker.new }

  context "site examples" do
    it "should return [4,7,2,9,6,3,1] when root = [4,2,7,1,3,6,9]" do
      root = parser.parse([4,2,7,1,3,6,9])

      expect(
        walker.walk_to_array(
          subject.invert_tree(root)
        )
      ).to eql([4,7,2,9,6,3,1])
    end

    it "should return [2,3,1] when root = [2,1,3]" do
      root = parser.parse([2,1,3])

      expect(
        walker.walk_to_array(
          subject.invert_tree(root)
        )
      ).to eql([2,3,1])
    end

    it "should return nil when root = nil" do
      expect(
        subject.invert_tree(nil)
      ).to eql(nil)
    end
  end

  it "should return [1] when root = [1]" do
    root = parser.parse([1])

    expect(
      walker.walk_to_array(
        subject.invert_tree(root)
      )
    ).to eql([1])
  end

end
