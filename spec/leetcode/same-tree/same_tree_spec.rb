require_relative '../../../leetcode/same-tree/same_tree.rb'

describe "Same Tree" do
  subject { LeetCode::SameTree.new }

  it "should return true for p = nil and q = nil" do
    expect(subject.is_same_tree(
      nil,
      nil
    )).to eql(true)
  end

  it "should return false for p = nil and q = [1]" do
    expect(subject.is_same_tree(
      nil,
      subject.parse([1])
    )).to eql(false)
  end

  it "should return false for p = [1] and q = nil" do
    expect(subject.is_same_tree(
      subject.parse([1]),
      nil
    )).to eql(false)
  end

  it "should return false for p = [1] and q = [2]" do
    expect(subject.is_same_tree(
      subject.parse([1]),
      subject.parse([2])
    )).to eql(false)
  end

  it "should return true for p = [1,nil] and q = [1]" do
    expect(subject.is_same_tree(
      subject.parse([1,nil]),
      subject.parse([1])
    )).to eql(true)
  end

  it "should return true for p = [1] and q = [1,nil]" do
    expect(subject.is_same_tree(
      subject.parse([1]),
      subject.parse([1,nil])
    )).to eql(true)
  end

  it "should return true for p = [1] and q = [1]" do
    expect(subject.is_same_tree(
      subject.parse([1]),
      subject.parse([1])
    )).to eql(true)
  end

  it "should return true for p = [1,2] and q = [1,2]" do
    expect(subject.is_same_tree(
      subject.parse([1,2]),
      subject.parse([1,2])
    )).to eql(true)
  end

  it "should return false for p = [1,2,3] and q = [1,2,nil,3]" do
    expect(subject.is_same_tree(
      subject.parse([1,2,3]),
      subject.parse([1,2,nil,3])
    )).to eql(false)
  end

  it "should return false for p = [1,2,nil,nil,5] and q = [1,2,3,nil,5]" do
    expect(subject.is_same_tree(
      subject.parse([1,2,nil,nil,5]),
      subject.parse([1,2,3,nil,5])
    )).to eql(false)
  end

  it "should return true for largest tree in both" do
    data = []

    (1..100).each do |i|
      data << i
    end

    expect(subject.is_same_tree(
      subject.parse(data),
      subject.parse(data)
    )).to eql(true)
  end

  it "should return false for largest tree in both but one tree has different last number" do
    data = []

    (1..100).each do |i|
      data << i
    end

    data2 = data.dup
    data2[data2.length-1] = 42

    expect(subject.is_same_tree(
      subject.parse(data),
      subject.parse(data2)
    )).to eql(false)
  end

  context "site examples" do
    it "should return true for p = [1,2,3] and q = [1,2,3]" do
      expect(subject.is_same_tree(
        subject.parse([1,2,3]),
        subject.parse([1,2,3])
      )).to eql(true)
    end

    it "should return false for p = [1,2] and q = [1,null,2]" do
      expect(subject.is_same_tree(
        subject.parse([1,2]),
        subject.parse([1,nil,2])
      )).to eql(false)
    end

    it "should return false for p = [1,2] and q = [1,null,2]" do
      expect(subject.is_same_tree(
        subject.parse([1,2,1]),
        subject.parse([1,1,2])
      )).to eql(false)
    end
  end

end
