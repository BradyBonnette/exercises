require_relative '../../../leetcode/reverse-linked-list/reverse_linked_list.rb'
require_relative '../../../leetcode/_helpers/list_parser.rb'

describe "Reverse Linked list" do
  subject { LeetCode::ReverseLinkedList.new }
  let(:parser) { LeetCode::Helpers::ListParser }

  context "site examples" do
    # Input: head = [1,2,3,4,5]
    # Output: [5,4,3,2,1]
    it "should return [5,4,3,2,1] when head = [1,2,3,4,5]" do
      list = parser.parse([1,2,3,4,5])

      expect(
        parser.walk(subject.reverse_list(list))
      ).to eql([5,4,3,2,1])
    end

    # Input: head = [1,2]
    # Output: [2,1]
    it "should return [2,1] when head = [1,2]" do
      list = parser.parse([1,2])

      expect(
        parser.walk(subject.reverse_list(list))
      ).to eql([2,1])
    end

    # Input: head = []
    # Output: []
    it "should return nil when head = nil" do
      expect(subject.reverse_list(nil)).to eql(nil)
    end
  end

  it "should return [3,2,1] when head = [1,2,3]" do
    list = parser.parse([1,2,3])

    expect(
      parser.walk(subject.reverse_list(list))
    ).to eql([3,2,1])
  end

  it "should return [1] when head = [1]" do
    list = parser.parse([1])

    expect(
      parser.walk(subject.reverse_list(list))
    ).to eql([1])
  end

  it "should perform well when givin maximum setup" do
    arr = []
    5000.times{|i| arr << i}
    list = parser.parse(arr)

    expect(
      parser.walk(subject.reverse_list(list))
    ).to eql(arr.reverse)
  end
end
