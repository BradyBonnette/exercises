require_relative '../../../leetcode/merge-sorted-array/merge_sorted_array.rb'

describe "Merge Sorted Array" do
  subject { LeetCode::MergeSortedArray.new }

  it "should return empty array if both inputs are empty" do
    expect(subject.merge([], 0, [], 0)).to eql([])
  end

  it "should return nums1 if nums1 contains 1 value and nums2 is empty" do
    expect(subject.merge([1], 1, [], 0)).to eql([1])
  end

  it "should return nums1 with single value if nums1 is empty and nums2 has one value" do
    expect(subject.merge([], 0, [1], 1)).to eql([1])
  end

  context "single digits" do
    it "returns correct array if both num1 value and num2 value are equal" do
      expect(subject.merge([1], 1, [1], 1)).to eql([1,1])
    end
  end

  context "num1.length > num2.length" do
    it "returns correct array for nums1=[1,5,0] and nums2=[1]" do
      expect(subject.merge([1,5,0], 2, [1], 1)).to eql([1,1,5])
    end

    it "returns correct array for nums1=[1,5,0,0] and nums2=[1,2]" do
      expect(subject.merge([1,5,0,0], 2, [1,2], 2)).to eql([1,1,2,5])
    end

    it "returns correct array for nums1=[1,10,0,0] and nums2=[4,8]" do
      expect(subject.merge([1,10,0,0], 2, [4,8], 2)).to eql([1,4,8,10])
    end

    it "returns correct array for nums1=[1,10,15,20,22,0,0,0,0] and nums2=[2,11,15,19]" do
      expect(subject.merge([1,10,15,20,22,0,0,0,0], 5, [2,11,15,19], 4)).to eql([1,2,10,11,15,15,19,20,22])
    end
  end

  context "num1.length == num2.length" do
    it "returns correct array for nums1=[1,0] and nums2=[2]" do
      expect(subject.merge([1,0], 1, [2], 1)).to eql([1,2])
    end

    it "returns correct array for nums1=[1,3,0,0] and nums2=[2,4]" do
      expect(subject.merge([1,3,0,0], 2, [2,4], 2)).to eql([1,2,3,4])
    end

    it "returns correct array for nums1=[2,5,10,0,0,0] and nums2=[1,5,11]" do
      expect(subject.merge([2,5,10,0,0,0], 3, [1,5,11], 3)).to eql([1,2,5,5,10,11])
    end
  end

  context "site examples" do
    it "returns correct array for nums1=[1,2,3,0,0,0] and nums2=[2,5,6]" do
      expect(subject.merge([1,2,3,0,0,0], 3, [2,5,6], 3)).to eql([1,2,2,3,5,6])
    end

    it "returns correct array for nums1=[1] and nums2=[]" do
      expect(subject.merge([1], 1, [], 0)).to eql([1])
    end

    it "returns correct array for nums1=[0] and nums2=[1]" do
      expect(subject.merge([0], 0, [1], 1)).to eql([1])
    end

    it "returns correct array for nums1=[4,0,0,0,0,0] and nums2=[1,2,3,5,6]" do
      expect(subject.merge([4,0,0,0,0,0], 1, [1,2,3,5,6], 1)).to eql([1,2,3,4,5,6])
    end
  end
end
