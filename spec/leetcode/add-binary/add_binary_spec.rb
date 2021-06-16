require_relative '../../../leetcode/add-binary/add_binary.rb'

describe "Add Binary" do
  subject { LeetCode::AddBinary.new }

  context "single digits" do
    it "should return '0' when a = '0' and b = '0'" do
      expect(subject.add_binary("0", "0")).to eql("0")
    end

    it "should return '1' when a = '1' and b = '0'" do
      expect(subject.add_binary("1", "0")).to eql("1")
    end

    it "should return '1' when a = '0' and b = '1'" do
      expect(subject.add_binary("0", "1")).to eql("1")
    end

    it "should return '10' when a = '1' and b = '1'" do
      expect(subject.add_binary("1", "1")).to eql("10")
    end
  end

  context "single and double digits mixed" do
    it "should return '10' when a = '10' and b = '0'" do
      expect(subject.add_binary("10", "0")).to eql("10")
    end

    it "should return '11' when a = '11' and b = '0'" do
      expect(subject.add_binary("11", "0")).to eql("11")
    end

    it "should return '11' when a = '10' and b = '1'" do
      expect(subject.add_binary("10", "0")).to eql("10")
    end

    it "should return '100' when a = '11' and b = '1'" do
      expect(subject.add_binary("11", "1")).to eql("100")
    end
  end

  context "double digits" do
    it "should return '100' when a = '10' and b = '10'" do
      expect(subject.add_binary("10", "10")).to eql("100")
    end

    it "should return '101' when a = '10' and b = '11'" do
      expect(subject.add_binary("10", "11")).to eql("101")
    end

    it "should return '101' when a = '11' and b = '10'" do
      expect(subject.add_binary("11", "10")).to eql("101")
    end

    it "should return '110' when a = '11' and b = '11'" do
      expect(subject.add_binary("11", "11")).to eql("110")
    end
  end

  context "mixed numer" do
    it "should return '10101100' when a = '1010101' and b = '1010111'" do
      expect(subject.add_binary("1010101", "1010111")).to eql("10101100")
    end

    it "should return '10000000010' when a = '1111111111' and b = '11'" do
      expect(subject.add_binary("1111111111", "11")).to eql("10000000010")
    end
  end
end
