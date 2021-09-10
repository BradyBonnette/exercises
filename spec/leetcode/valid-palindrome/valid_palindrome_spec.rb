require_relative '../../../leetcode/valid-palindrome/valid_palindrome.rb'

describe "Valid Palindrome" do
  subject { LeetCode::ValidPalindrome.new }

  context "site examples" do
    # Input: s = "A man, a plan, a canal: Panama"
    # Output: true
    it "should be true when input = 'A man, a plan, a canal: Panama'" do
      expect(subject.is_palindrome('A man, a plan, a canal: Panama')).to eql(true)
    end

    # Input: s = "race a car"
    # Output: false
    it "should be false when input = 'race a car'" do
      expect(subject.is_palindrome('race a car')).to eql(false)
    end
  end

  it "should be true when string = 'a'" do
    expect(subject.is_palindrome('a')).to eql(true)
  end

  it "should be true when string = '1'" do
    expect(subject.is_palindrome('1')).to eql(true)
  end

  it "should be true when string = ':'" do
    expect(subject.is_palindrome(':')).to eql(true)
  end

  it "should be false when string = 'ab'" do
    expect(subject.is_palindrome('ab')).to eql(false)
  end

  it "should be true when string = 'bb'" do
    expect(subject.is_palindrome('bb')).to eql(true)
  end

  it "should be true when string = 'bb '" do
    expect(subject.is_palindrome('bb ')).to eql(true)
  end

  it "should be true when string = ' bb'" do
    expect(subject.is_palindrome(' bb')).to eql(true)
  end

  it "should be true when string = ' bb '" do
    expect(subject.is_palindrome(' bb ')).to eql(true)
  end

  it "should be true when string = ' b b '" do
    expect(subject.is_palindrome(' b b ')).to eql(true)
  end

  it "should be true when string = ' b  b '" do
    expect(subject.is_palindrome(' b b ')).to eql(true)
  end

  it "should be false when string = ' a  b '" do
    expect(subject.is_palindrome(' a b ')).to eql(false)
  end

  it "should be false when string = ' a:  b: '" do
    expect(subject.is_palindrome(' a: b: ')).to eql(false)
  end

  it "should be true when string = 'abccba'" do
    expect(subject.is_palindrome('abccba')).to eql(true)
  end

  it "should be true when string = '111abccba111'" do
    expect(subject.is_palindrome('111abccba111')).to eql(true)
  end

  it "should run in a decent time when given the maximum string possible" do
    largest = 2 * (10**5)
    str = ""

    largest.times do
      str << "a"
    end

    expect(str.size).to eql(largest)
    expect(subject.is_palindrome(str)).to eql(true)
  end

end
