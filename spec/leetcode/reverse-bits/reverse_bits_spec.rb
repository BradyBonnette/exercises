require_relative '../../../leetcode/reverse-bits/reverse_bits.rb'

describe "Reverse Bits" do
  subject { LeetCode::ReverseBits.new }

  context "site examples" do
    it "should return 964176192 when n = 00000010100101000001111010011100" do
      result = subject.reverse_bits("00000010100101000001111010011100".to_i(2))

      expect(result).to eql(964176192)
      expect(result.to_s(2)).to eql("111001011110000010100101000000")
    end

    it "should return 3221225471 when n = 11111111111111111111111111111101" do
      result = subject.reverse_bits("11111111111111111111111111111101".to_i(2))

      expect(result).to eql(3221225471)
      expect(result.to_s(2)).to eql("10111111111111111111111111111111")
    end
  end

  it "should return 0 when n = 00000000000000000000000000000000" do
    result = subject.reverse_bits("00000000000000000000000000000000".to_i(2))

    expect(result).to eql(0)
    expect(result.to_s(2)).to eql("0") # This is how Ruby outputs the value
  end

  it "should return 2147483648 when n = 00000000000000000000000000000001" do
    result = subject.reverse_bits("00000000000000000000000000000001".to_i(2))

    expect(result).to eql(2147483648)
    expect(result.to_s(2)).to eql("10000000000000000000000000000000")
  end

  it "should return 2147483649 when n = 10000000000000000000000000000001" do
    result = subject.reverse_bits("10000000000000000000000000000001".to_i(2))

    expect(result).to eql(2147483649)
    expect(result.to_s(2)).to eql("10000000000000000000000000000001")
  end

end
