require_relative '../../../leetcode/length-of-last-word/length_of_last_word.rb'

describe "Length of last word" do
  subject { LeetCode::LengthOfLastWord.new }

  it "should return 0 for a single blank string" do
    expect(subject.length_of_last_word(" ")).to eql(0)
  end

  it "should return 0 for a multiple blank spaces" do
    expect(subject.length_of_last_word("       ")).to eql(0)
  end

  context "single word" do
    it "should return 1 for a single character" do
      expect(subject.length_of_last_word("a")).to eql(1)
    end

    it "should return 3 for a single word containing 3 characters" do
      expect(subject.length_of_last_word("cat")).to eql(3)
    end
  end

  context "two words" do
    it "should return 1 for last word containing one char" do
      expect(subject.length_of_last_word("cat a")).to eql(1)
    end

    it "should return 1 for last word containing one char with space at the beginning of string" do
      expect(subject.length_of_last_word(" cat a")).to eql(1)
    end

    it "should return 1 for last word containing one char with multiple spaces everywhere" do
      expect(subject.length_of_last_word("   cat    a     ")).to eql(1)
    end

    it "should return 1 for last word containing one char with space at the end of string" do
      expect(subject.length_of_last_word("cat a ")).to eql(1)
    end

    it "should return 1 for last word containing one char with space at the beginning end of string" do
      expect(subject.length_of_last_word(" cat a ")).to eql(1)
    end

    it "should return 3 for last word containing three chars" do
      expect(subject.length_of_last_word("cat hat")).to eql(3)
    end
  end

  context "many words" do
    it "should return 5 for last word containing five chars" do
      expect(subject.length_of_last_word("Cat and the hat with bells")).to eql(5)
    end
  end
end
