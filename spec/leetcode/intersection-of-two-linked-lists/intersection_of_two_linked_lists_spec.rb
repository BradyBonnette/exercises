require_relative '../../../leetcode/intersection-of-two-linked-lists/intersection_of_two_linked_lists.rb'
require_relative '../../../leetcode/_helpers/list_parser.rb'

describe "Intersection of Two Linked Lists" do
  subject { LeetCode::IntersectionOfTwoLinkedLists.new }
  let(:parser) { LeetCode::Helpers::ListParser }

  context "site examples" do
# Input: intersectVal = 8, listA = [4,1,8,4,5], listB = [5,6,1,8,4,5], skipA = 2, skipB = 3
# Output: Intersected at '8'
    it "should return Interesected at '8' when listA=[4,1,8,4,5] and listB=[5,6,1,8,4,5]" do
      listA = parser.parse([4,1,8,4,5])
      listB = parser.parse([5,6,1])

      a_ptr = listA
      b_ptr = listB
      1.times { a_ptr = a_ptr.next }
      2.times { b_ptr = b_ptr.next }

      target_node = a_ptr.next
      b_ptr.next = target_node

      result = subject.getIntersectionNode(listA,listB)
      expect(result).to eql(target_node)
    end

# Input: intersectVal = 2, listA = [1,9,1,2,4], listB = [3,2,4], skipA = 3, skipB = 1
# Output: Intersected at '2'
    it "should return Interesected at '8' when listA=[1,9,1,2,4] and listB=[3,2,4]" do
      listA = parser.parse([1,9,1,2,4])
      listB = parser.parse([3])

      a_ptr = listA
      b_ptr = listB
      2.times { a_ptr = a_ptr.next }
      # 2.times { b_ptr = b_ptr.next }

      target_node = a_ptr.next
      b_ptr.next = target_node

      expect(subject.getIntersectionNode(listA,listB)).to eql(target_node)
    end

# Input: intersectVal = 0, listA = [2,6,4], listB = [1,5], skipA = 3, skipB = 2
# Output: No intersection
    it "should return nil when listA=[2,6,4] and listB=[1,5], skipA = 3, skipB = 2" do
      listA = parser.parse([2,6,4])
      listB = parser.parse([1,5])

      expect(subject.getIntersectionNode(listA,listB)).to eql(nil)
    end
  end

  it "should return nil if both lists are nil" do
    expect(subject.getIntersectionNode(nil,nil)).to eql(nil)
  end

  it "should return nil if list A is present but list B is nil" do
    listA = parser.parse([1,2,3])

    expect(subject.getIntersectionNode(listA,nil)).to eql(nil)
  end

  it "should return 'No intersection' if list A is nil but list B is present" do
    listB = parser.parse([1,2,3])

    expect(subject.getIntersectionNode(nil,listB)).to eql(nil)
  end

  it "should return 'No intersection' if list A = [1] and list B = [2], no skipping" do
    listA = parser.parse([1])
    listB = parser.parse([2])

    expect(subject.getIntersectionNode(listA,listB)).to eql(nil)
  end

  it "should return 'Intersected at '2'' if list A = [2] and list B = [2], where B points to A" do
    listA = parser.parse([1])
    listB = listA

    expect(subject.getIntersectionNode(listA,listB)).to eql(listA)
  end

  it "should perform well under worst case scenario" do
    a_arr = []
    b_arr = []

    max = (3*10**4)

    max.times do |n|
      a_arr << n

      if n < max
        b_arr << n
      end
    end

    listA = parser.parse(a_arr)
    listB = parser.parse(b_arr)

    # Last node in listB should point to the last node in listA
    tmpA = listA
    tmpB = listB

    (max-1).times { tmpA = tmpA.next ; tmpB = tmpB.next }

    target_node = tmpA.next
    tmpB.next = target_node

    expect(subject.getIntersectionNode(listA,listB)).to eql(target_node)
  end
end
