require_relative '../../../leetcode/palindrome-linked-list/palindrome_linked_list.rb'
require_relative '../../../leetcode/_helpers/list_parser.rb'

describe "Palindrome Linked List" do
  subject { LeetCode::PalindromeLinkedList.new }
  let(:parser) { LeetCode::Helpers::ListParser }

  context "site examples" do
    # Input: head = [1,2,2,1]
    # Output: true
    it "should return true when head = [1,2,2,1]" do
      list = parser.parse([1,2,2,1])

      expect(subject.is_palindrome(list)).to eql(true)
    end

    # Input: head = [1,2]
    # Output: false
    it "should return false when head = [1,2]" do
      list = parser.parse([1,2])

      expect(subject.is_palindrome(list)).to eql(false)
    end
  end

  it "should return true when list = [1]" do
    list = parser.parse([1])

    expect(subject.is_palindrome(list)).to eql(true)
  end

  it "should return false when list = [1,2,3]" do
    list = parser.parse([1,2,3])

    expect(subject.is_palindrome(list)).to eql(false)
  end

  it "should return true when list = [1,2,1]" do
    list = parser.parse([1,2,1])

    expect(subject.is_palindrome(list)).to eql(true)
  end

  it "should return false when list = [1,2,1,3]" do
    list = parser.parse([1,2,1,3])

    expect(subject.is_palindrome(list)).to eql(false)
  end

  it "should return true when list = [1,2,2,1]" do
    list = parser.parse([1,2,2,1])

    expect(subject.is_palindrome(list)).to eql(true)
  end

  it "should return true when list = [1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1]" do
    list = parser.parse([1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1])

    expect(subject.is_palindrome(list)).to eql(true)
  end

  it "should perform well with 10**5 nodes in the list" do
    arr = Array.new(10**5, 1)
    arr[10**5/2] = 2 # Make this list not a palindrome

    list = parser.parse(arr)

    expect(subject.is_palindrome(list)).to eql(false)
  end
end
