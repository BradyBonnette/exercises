require_relative '../../../leetcode/remove-linked-list-elements/remove_linked_list_elements.rb'
require_relative '../../../leetcode/_helpers/list_parser.rb'

describe "Remove Linked List Elements" do
  subject { LeetCode::RemoveLinkedListElements.new }
  let(:parser) { LeetCode::Helpers::ListParser }

  context "site examples" do
    # Input: head = [1,2,6,3,4,5,6], val = 6
    # Output: [1,2,3,4,5]
    it "should return [1,2,3,4,5] when list=[1,2,6,3,4,5,6] and val=6" do
      list = parser.parse([1,2,6,3,4,5,6])

      expect(
        parser.walk(subject.remove_elements(list, 6))
      ).to eql([1,2,3,4,5])
    end

    # Example 2:
    # Input: head = [], val = 1
    # Output: []
    it "should return nil when list=nil and val=1" do
      # list = parser.parse([])

      expect(
        subject.remove_elements(nil, 1)
      ).to eql(nil)
    end

    # Example 3:
    # Input: head = [7,7,7,7], val = 7
    # Output: []
    it "should return [] when list=[7,7,7,7] and val=7" do
      list = parser.parse([7,7,7,7])

      expect(
        parser.walk(subject.remove_elements(list, 7))
      ).to eql(nil)
    end
  end

  it "should return [1] when list=[1] and val=7" do
    list = parser.parse([1])

    expect(
      parser.walk(subject.remove_elements(list, 7))
    ).to eql([1])
  end

  it "should return nil when list=[1] and val=1" do
    list = parser.parse([1])

    expect(
      parser.walk(subject.remove_elements(list, 1))
    ).to eql(nil)
  end

  it "should return nil when list=[2,2] and val=2" do
    list = parser.parse([2,2])

    expect(
      parser.walk(subject.remove_elements(list, 2))
    ).to eql(nil)
  end

  it "should return [1] when list=[1,2] and val=2" do
    list = parser.parse([1,2])

    expect(
      parser.walk(subject.remove_elements(list, 2))
    ).to eql([1])
  end

  it "should return [1,3] when list=[1,2,3] and val=2" do
    list = parser.parse([1,2,3])

    expect(
      parser.walk(subject.remove_elements(list, 2))
    ).to eql([1,3])
  end

  it "should return [1,3] when list=[1,2,2,3] and val=2" do
    list = parser.parse([1,2,2,3])

    expect(
      parser.walk(subject.remove_elements(list, 2))
    ).to eql([1,3])
  end

  it "should return [3] when list=[2,2,2,2,3] and val=2" do
    list = parser.parse([2,2,2,2,3])

    expect(
      parser.walk(subject.remove_elements(list, 2))
    ).to eql([3])
  end

  it "should return [2,2,2,2] when list=[2,2,2,2,3] and val=3" do
    list = parser.parse([2,2,2,2,3])

    expect(
      parser.walk(subject.remove_elements(list, 3))
    ).to eql([2,2,2,2])
  end

  it "should return [2,2,2,2] when list=[3,2,2,2,2,3] and val=3" do
    list = parser.parse([3,2,2,2,2,3])

    expect(
      parser.walk(subject.remove_elements(list, 3))
    ).to eql([2,2,2,2])
  end

  it "should return [2,2,2,2] when list=[3,3,3,2,2,2,2,3,3,3] and val=3" do
    list = parser.parse([3,3,3,2,2,2,2,3,3,3])

    expect(
      parser.walk(subject.remove_elements(list, 3))
    ).to eql([2,2,2,2])
  end

  it "should return [2,2,2,2] when list=[3,2,3,2,3,2,3,2] and val=3" do
    list = parser.parse([3,2,3,2,3,2,3,2])

    expect(
      parser.walk(subject.remove_elements(list, 3))
    ).to eql([2,2,2,2])
  end

  it "should perform well with maximum number of nodes in the list" do
    arr = []

    # Create a large array of 1's and 0's, remove all the 1's, and test
    (10**4).times do |ctr|
      arr << ctr%2
    end

    list = parser.parse(arr)
    compare_to = Array.new(5000,0)

    expect(
      parser.walk(subject.remove_elements(list, 1))
    ).to eql(compare_to)
  end
end
