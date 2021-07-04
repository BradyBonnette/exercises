require_relative '../../../leetcode/climbing-stairs/climbing_stairs.rb'

describe "Climbing Stairs" do
  subject { LeetCode::ClimbingStairs.new }

  it "should return 1 when n=1" do
    expect(subject.climb_stairs(1)).to eql(1)
  end

  it "should return 2 when n=2" do
    expect(subject.climb_stairs(2)).to eql(2)
  end

  it "should return 3 when n=3" do
    expect(subject.climb_stairs(3)).to eql(3)
  end

  it "should return 5 when n=4" do
    expect(subject.climb_stairs(4)).to eql(5)
  end

  it "should return 8 when n=5" do
    expect(subject.climb_stairs(5)).to eql(8)
  end

  it "should return 13 when n=6" do
    expect(subject.climb_stairs(6)).to eql(13)
  end

  it "should return 10946 when n=20" do
    expect(subject.climb_stairs(20)).to eql(10946)
  end

  it "should return 1836311903 when n=45" do
    expect(subject.climb_stairs(45)).to eql(1836311903)
  end

end
