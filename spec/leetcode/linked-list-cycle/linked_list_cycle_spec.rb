require_relative '../../../leetcode/linked-list-cycle/linked_list_cycle.rb'

describe "Linked List Cycle" do
  subject { LeetCode::LinkedListCycle.new }

  context "site examples" do
    it "should return true when list = [3,2,0,-4] and last node points to pos = 1" do
      head = LeetCode::LinkedListCycle::ListNode.new(3)
      head.next = LeetCode::LinkedListCycle::ListNode.new(2)
      head.next.next = LeetCode::LinkedListCycle::ListNode.new(0)
      head.next.next.next = LeetCode::LinkedListCycle::ListNode.new(-4)
      head.next.next.next.next = head.next

      expect(subject.hasCycle(head)).to eql(true)
    end

    it "should return true when list = [1,2] and last node points to pos = 0" do
      head = LeetCode::LinkedListCycle::ListNode.new(1)
      head.next = LeetCode::LinkedListCycle::ListNode.new(2)
      head.next.next = head

      expect(subject.hasCycle(head)).to eql(true)
    end

    it "should return false when list = [1] and last node points to pos = -1 (no cycle)" do
      head = LeetCode::LinkedListCycle::ListNode.new(1)

      expect(subject.hasCycle(head)).to eql(false)
    end

    it "should return false when list = [-21,10,17,8,4,26,5,35,33,-7,-16,27,-12,6,29,-12,5,9,20,14,14,2,13,-24,21,23,-21,5] and pos = -1 (no cycle)" do
      arr = [-21,10,17,8,4,26,5,35,33,-7,-16,27,-12,6,29,-12,5,9,20,14,14,2,13,-24,21,23,-21,5]
      head = LeetCode::LinkedListCycle::ListNode.new(arr[0])
      curr = head

      (1..arr.size-1).each do |i|
        curr.next = LeetCode::LinkedListCycle::ListNode.new(arr[i])
        curr = curr.next
      end

      expect(subject.hasCycle(head)).to eql(false)
    end

  end

  it "should return false when list = nil" do
    expect(subject.hasCycle(nil)).to eql(false)
  end

  it "should return true when list = [2] and pos = 0" do
    head = LeetCode::LinkedListCycle::ListNode.new(2)
    head.next = head

    expect(subject.hasCycle(head)).to eql(true)
  end

  it "should return true when list = [5,10] and pos = 1" do
    head = LeetCode::LinkedListCycle::ListNode.new(5)
    head.next = LeetCode::LinkedListCycle::ListNode.new(10)
    head.next.next = head.next

    expect(subject.hasCycle(head)).to eql(true)
  end

  it "should return false when list = [5,10] and pos = -1 (no cycle)" do
    head = LeetCode::LinkedListCycle::ListNode.new(5)
    head.next = LeetCode::LinkedListCycle::ListNode.new(10)

    expect(subject.hasCycle(head)).to eql(false)
  end

  it "should return in a reasonable time when maximum number of nodes and cycle present" do
    head = LeetCode::LinkedListCycle::ListNode.new(1)
    curr = head

    (2..(10**4)).each do |i|
      curr.next = LeetCode::LinkedListCycle::ListNode.new(i)
      curr = curr.next
    end

    # at this point, curr = last element. Make a cycle here
    curr.next = head.next.next

    expect(subject.hasCycle(head)).to eql(true)
  end

end
