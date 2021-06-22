require_relative '../../../leetcode/sqrtx/sqrtx.rb'

describe "Add Binary" do
  subject { LeetCode::Sqrtx.new }

  it "should return 0 when x=0" do
    expect(subject.my_sqrt(0)).to eql(0)
  end

  it "should return 1 when x=1" do
    expect(subject.my_sqrt(1)).to eql(1)
  end

  it "should return 1 when x=2" do
    expect(subject.my_sqrt(2)).to eql(1)
  end

  it "should return 1 when x=3" do
    expect(subject.my_sqrt(3)).to eql(1)
  end

  it "should return 2 when x=4" do
    expect(subject.my_sqrt(4)).to eql(2)
  end

  it "should return 2 when x=5" do
    expect(subject.my_sqrt(4)).to eql(2)
  end

  it "should return 100 when x=10000" do
    expect(subject.my_sqrt(10000)).to eql(100)
  end

  it "should return 263 when x=69420" do
    expect(subject.my_sqrt(69420)).to eql(263)
  end

  it "should return 32768 when x=1,073,741,824" do
    expect(subject.my_sqrt(1_073_741_824)).to eql(32768)
  end

  it "should return 46340 when x=2,147,483,647" do
    expect(subject.my_sqrt(2_147_483_647)).to eql(46340)
  end
end
