require_relative '../../../leetcode/maximum-subarray/maximum_subarray.rb'

describe "search_insert_position" do
  subject { LeetCode::MaximumSubarray.new }

  context "single value array" do
    it "should return the only value" do
      expect(subject.max_sub_array([1])).to eql(1)
    end
  end

  context "array n=2" do
    it "should return sum of positive numbers" do
      expect(subject.max_sub_array([1,2])).to eql(3)
    end

    it "should return the highest of negative numbers" do
      expect(subject.max_sub_array([-1,-2])).to eql(-1)
    end

    it "should return highest of negative and positive number" do
      expect(subject.max_sub_array([1,-2])).to eql(1)
    end
  end

  context "array n=3" do
    it "should return left-skewed array" do
      expect(subject.max_sub_array([1,-2, -3])).to eql(1)
    end

    it "should return middle-skewed array" do
      expect(subject.max_sub_array([-1, 2, -3])).to eql(2)
    end

    it "should return right-skewed array" do
      expect(subject.max_sub_array([-1, -2, 3])).to eql(3)
    end
  end

  context "array n>3" do
    it "should return left-skewed array" do
      expect(subject.max_sub_array([1,2,5,-7,-2,-3])).to eql(8)
    end

    it "should return middle-skewed array" do
      expect(subject.max_sub_array([-2,-6,-3,2,6,8,-2,-6,-7])).to eql(16)
    end

    it "should return right-skewed array" do
      expect(subject.max_sub_array([-5,5,-2,2,-7,8,9,4])).to eql(21)
    end
  end

end
