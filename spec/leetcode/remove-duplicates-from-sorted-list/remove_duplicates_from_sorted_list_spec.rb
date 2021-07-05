require_relative '../../../leetcode/remove-duplicates-from-sorted-list/remove_duplicates_from_sorted_list.rb'

describe "Add Binary" do
  subject { LeetCode::RemoveDuplicatesFromSortedList.new }

  it "should return empty array if head is nil" do
    expect(subject.delete_duplicates(nil)).to eql([])
  end

  it "should return array of [1] if list is 1" do
    head = RemoveDuplicatesFromSortedListListNode.new(1)
    expect(subject.delete_duplicates(head)).to eql([1])
  end

  it "should return array of [1,2] if list is 1->2" do
    head = RemoveDuplicatesFromSortedListListNode.new(1)
    head_2 = RemoveDuplicatesFromSortedListListNode.new(2)
    head.next = head_2

    expect(subject.delete_duplicates(head)).to eql([1,2])
  end

  it "should return array of [1] if list is 1->1" do
    head = RemoveDuplicatesFromSortedListListNode.new(1)
    head_2 = RemoveDuplicatesFromSortedListListNode.new(1)
    head.next = head_2

    expect(subject.delete_duplicates(head)).to eql([1])
  end

  it "should return array of [1,2] if list is 1->1->2" do
    head = RemoveDuplicatesFromSortedListListNode.new(1)
    head_2 = RemoveDuplicatesFromSortedListListNode.new(1)
    head_3 = RemoveDuplicatesFromSortedListListNode.new(2)
    head.next = head_2
    head_2.next = head_3

    expect(subject.delete_duplicates(head)).to eql([1,2])
  end

  it "should return array of [1,2] if list is 1->2->2" do
    head = RemoveDuplicatesFromSortedListListNode.new(1)
    head_2 = RemoveDuplicatesFromSortedListListNode.new(2)
    head_3 = RemoveDuplicatesFromSortedListListNode.new(2)
    head.next = head_2
    head_2.next = head_3

    expect(subject.delete_duplicates(head)).to eql([1,2])
  end

  it "should return array of [1,2,3] if list is 1->2->3" do
    head = RemoveDuplicatesFromSortedListListNode.new(1)
    head_2 = RemoveDuplicatesFromSortedListListNode.new(2)
    head_3 = RemoveDuplicatesFromSortedListListNode.new(3)
    head.next = head_2
    head_2.next = head_3

    expect(subject.delete_duplicates(head)).to eql([1,2,3])
  end

  it "should return array of [1,2,3] if list is 1->1->2->3->3" do
    head = RemoveDuplicatesFromSortedListListNode.new(1)
    head_2 = RemoveDuplicatesFromSortedListListNode.new(1)
    head_3 = RemoveDuplicatesFromSortedListListNode.new(2)
    head_4 = RemoveDuplicatesFromSortedListListNode.new(3)
    head_5 = RemoveDuplicatesFromSortedListListNode.new(3)
    head.next = head_2
    head_2.next = head_3
    head_3.next = head_4
    head_4.next = head_5

    expect(subject.delete_duplicates(head)).to eql([1,2,3])
  end
end
