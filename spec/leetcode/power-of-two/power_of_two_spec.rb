require_relative '../../../leetcode/power-of-two/power_of_two.rb'

describe "Power of Two" do
  subject { LeetCode::PowerOfTwo.new }

  context "site examples" do
    it "should return true when n = 1"  do
      expect(subject.is_power_of_two(1)).to eql(true)
    end

    it "should return true when n = 16"  do
      expect(subject.is_power_of_two(16)).to eql(true)
    end

    it "should return false when n = 3"  do
      expect(subject.is_power_of_two(3)).to eql(false)
    end

    it "should return true when n = 4"  do
      expect(subject.is_power_of_two(4)).to eql(true)
    end

    it "should return false when n = 5"  do
      expect(subject.is_power_of_two(5)).to eql(false)
    end

    it "should return false when n = -2147483648"  do
      expect(subject.is_power_of_two(-2147483648)).to eql(false)
    end
  end

end
