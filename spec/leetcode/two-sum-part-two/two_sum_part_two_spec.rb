require_relative '../../../leetcode/two-sum-part-two/two_sum_part_two.rb'

describe "Two Sum part II" do
  subject { LeetCode::TwoSumPartTwo.new }

  context "site examples" do
    # Input: numbers = [2,7,11,15], target = 9
    # Output: [1,2]
    it "should return [1,2] when numbers=[2,7,11,15] and target = 9" do
      expect(subject.two_sum(
        [2,7,11,15],
        9
      )).to eql([1,2])
    end

    # Input: numbers = [2,3,4], target = 6
    # Output: [1,3]
    it "should return [1,3] when numbers=[2,3,4] and target = 6" do
      expect(subject.two_sum(
        [2,3,4],
        6
      )).to eql([1,3])
      # expect(subject.two_sum(
      #   [1,2,3,4,5],
      #   9
      # )).to eql([4,5])
    end

    # Input: numbers = [-1,0], target = -1
    # Output: [1,2]
    it "should return [1,2] when numbers=[-1,0] and target = -1" do
      expect(subject.two_sum(
        [-1,0],
        -1
      )).to eql([1,2])
    end

    # [3,24,50,79,88,150,345]
    # 200
    # [3,6]
    it "should return [1,2] when numbers=[-1,0] and target = -1" do
      expect(subject.two_sum(
        [3,24,50,79,88,150,345],
        200
      )).to eql([3,6])
    end
  end

  it "should return [1,2] when numbers=[3,4] and target = 7" do
    expect(subject.two_sum(
      [3,4],
      7
    )).to eql([1,2])
  end

  it "should return [1,2] when numbers=[10,15,20] and target = 25" do
    expect(subject.two_sum(
      [10, 15, 20],
      25
    )).to eql([1,2])
  end

  it "should return [2,3] when numbers=[10,15,20] and target = 35" do
    expect(subject.two_sum(
      [10, 15, 20],
      35
    )).to eql([2,3])
  end

  it "should return [1,3] when numbers=[10,15,20] and target = 30" do
    expect(subject.two_sum(
      [10, 15, 20],
      30
    )).to eql([1,3])
  end

  it "should return [1,2] when numbers=[-10,15,20] and target = 5" do
    expect(subject.two_sum(
      [-10, 15, 20],
      5
    )).to eql([1,2])
  end

  it "should return [1,3] when numbers=[-10,15,20] and target = 10" do
    expect(subject.two_sum(
      [-10, 15, 20],
      10
    )).to eql([1,3])
  end

  it "should return [2,3] when numbers=[-35, -20, -10] and target = -30" do
    expect(subject.two_sum(
      [-35, -20, -10],
      -30
    )).to eql([2,3])
  end

  it "should perform well with a large amount of array elements" do
    arr = []
    val = -1000

    2001.times do
      arr << val
      val += 1
    end

    expect(subject.two_sum(
      arr,
      1999
    )).to eql([2000,2001])
  end
end
