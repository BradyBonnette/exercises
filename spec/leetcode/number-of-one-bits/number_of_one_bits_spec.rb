require_relative '../../../leetcode/number-of-one-bits/number_of_one_bits.rb'

describe "Number of One Bits" do
  subject { LeetCode::NumberOfOneBits.new }

  context "site examples" do
    it "should return 3 when n = '00000000000000000000000000001011'" do
      expect(
        subject.hamming_weight("00000000000000000000000000001011".to_i(2))
      ).to eql(3)
    end

    it "should return 1 when n = '00000000000000000000000010000000'" do
      expect(
        subject.hamming_weight("00000000000000000000000010000000".to_i(2))
      ).to eql(1)
    end

    it "should return 31 when n = '11111111111111111111111111111101'" do
      expect(
        subject.hamming_weight("11111111111111111111111111111101".to_i(2))
      ).to eql(31)
    end
  end

  it "should return 0 when n = '00000000000000000000000000000000'" do
    expect(
      subject.hamming_weight("00000000000000000000000000000000".to_i(2))
    ).to eql(0)
  end

    it "should return 32 when n = '11111111111111111111111111111111'" do
      expect(
        subject.hamming_weight("11111111111111111111111111111111".to_i(2))
      ).to eql(32)
    end
end
