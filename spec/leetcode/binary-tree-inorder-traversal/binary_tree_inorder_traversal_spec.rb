require_relative '../../../leetcode/binary-tree-inorder-traversal/binary_tree_inorder_traversal.rb'

describe "Binary Tree Inorder Traversal" do
  subject { LeetCode::BinaryTreeInorderTraversal.new }

  context "two values" do
    it "should return [1,2] for data = [2,1]" do
      expect(subject.inorder_traversal(
        subject.parse([2,1])
      )).to eql([1,2])
    end

    it "should return [2,1] for data = [2,nil,1]" do
      expect(subject.inorder_traversal(
        subject.parse([2,nil,1])
      )).to eql([2,1])
    end

    it "should return [1,2] for data = [2,1,nil]" do
      expect(subject.inorder_traversal(
        subject.parse([2,1,nil])
      )).to eql([1,2])
    end
  end

  context "three values" do
    it "should return [4,2,1,3] for data = [1,2,3,4]" do
      expect(subject.inorder_traversal(
        subject.parse([1,2,3,4])
      )).to eql([4,2,1,3])
    end

    it "should return [2,1,3] for data = [1,2,3,nil]" do
      expect(subject.inorder_traversal(
        subject.parse([1,2,3,nil])
      )).to eql([2,1,3])
    end

    it "should return [4,2,1] for data = [1,2,nil,4]" do
      expect(subject.inorder_traversal(
        subject.parse([1,2,nil,4])
      )).to eql([4,2,1])
    end
  end

  context "site examples" do
    it "should return [1,3,2] for data = [1, nil, 2, 3]" do
      expect(subject.inorder_traversal(
        subject.parse([1, nil, 2, 3])
      )).to eql([1,3,2])
    end

    it "should return [] for data = []" do
      expect(subject.inorder_traversal(
        subject.parse([])
      )).to eql([])
    end

    it "should return [1] for data = [1]" do
      expect(subject.inorder_traversal(
        subject.parse([1])
      )).to eql([1])
    end

    it "should return [2,1] for data = [1,2]" do
      expect(subject.inorder_traversal(
        subject.parse([1,2])
      )).to eql([2,1])
    end

    it "should return [1,2] for data = [1, nil, 2]" do
      expect(subject.inorder_traversal(
        subject.parse([1,nil,2])
      )).to eql([1,2])
    end

  end

end
