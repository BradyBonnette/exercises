require_relative '../../../leetcode/plus-one/plus_one.rb'

describe "Plus one" do
  subject { LeetCode::PlusOne.new }

  context "single digit" do
    it "should return [1] when only array item is [0]" do
      expect(subject.plus_one([0])).to eql([1])
    end

    it "should return [2] when only array item is [1]" do
      expect(subject.plus_one([1])).to eql([2])
    end

    it "should return [1,0] when only array item is [9]" do
      expect(subject.plus_one([9])).to eql([1,0])
    end
  end

  context "double digits" do
    it "should return [1,1] when array items are [1,0]" do
      expect(subject.plus_one([1,0])).to eql([1,1])
    end

    it "should return [6,0] when array items are [5,9]" do
      expect(subject.plus_one([5,9])).to eql([6,0])
    end

    it "should return [9,9] when array items are [9,8]" do
      expect(subject.plus_one([9,8])).to eql([9,9])
    end

    it "should return [1,0,0] when array items are [9,9]" do
      expect(subject.plus_one([9,9])).to eql([1,0,0])
    end
  end

  context "triple digits" do
    it "should return [1,0,1] when array items are [1,0,0]" do
      expect(subject.plus_one([1,0,0])).to eql([1,0,1])
    end

    it "should return [1,4,0] when array items are [1,3,9]" do
      expect(subject.plus_one([1,3,9])).to eql([1,4,0])
    end

    it "should return [9,9,9] when array items are [9,9,8]" do
      expect(subject.plus_one([9,9,8])).to eql([9,9,9])
    end

    it "should return [1,0,0,0] when array items are [9,9,9]" do
      expect(subject.plus_one([9,9,9])).to eql([1,0,0,0])
    end
  end

end
