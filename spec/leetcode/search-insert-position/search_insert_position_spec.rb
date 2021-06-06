require_relative '../../../leetcode/search-insert-position/search_insert_position.rb'

describe "search_insert_position" do
  subject { LeetCode::SearchInsertPosition.new }

  context "single value array" do
    context "target exists" do
      it "should return 0 when target = only value" do
        expect(subject.search_insert([1], 1)).to eql(0)
      end
    end

    context "does not exist" do
      it "should return 1 when target > only value" do
        expect(subject.search_insert([1], 2)).to eql(1)
      end

      it "return 0 when target < negative number" do
        expect(subject.search_insert([-4], -5)).to eql(0)
      end
    end

  end

  context "array size = 2" do
    context "target exists" do
      it "should return 0 if target exists at idx=0" do
        expect(subject.search_insert([1,2], 1)).to eql(0)
      end

      it "should return 1 if target exists at idx=1" do
        expect(subject.search_insert([1,2], 1)).to eql(0)
      end
    end

    context "target does not exist" do
      it "should return 0 when target < all numbers" do
        expect(subject.search_insert([1,2], 0)).to eql(0)
      end

      it "should return 2 when target > all numbers" do
        expect(subject.search_insert([1,2], 3)).to eql(2)
      end

      it "should return 1 when idx0 < target < idx1" do
        expect(subject.search_insert([1,4], 2)).to eql(1)
      end
    end
  end

  context "array size = 3" do
    context "target exists" do
      it "should return 0 if target exists at idx=0" do
        expect(subject.search_insert([1,2,3], 1)).to eql(0)
      end

      it "should return 1 if target exists at idx=1" do
        expect(subject.search_insert([1,2,3], 2)).to eql(1)
      end

      it "should return 2 if target exists at idx=2" do
        expect(subject.search_insert([1,2,3], 3)).to eql(2)
      end
    end

    context "target does not exist" do
      it "should return 0 if target < all values" do
        expect(subject.search_insert([1,2,3], 0)).to eql(0)
      end

      it "should return 3 if target > all values" do
        expect(subject.search_insert([1,2,3], 4)).to eql(3)
      end

      it "should return 1 if idx0 < target idx1" do
        expect(subject.search_insert([1,3,5], 2)).to eql(1)
      end

      it "should return 2 if idx1 < target idx2" do
        expect(subject.search_insert([1,3,5], 4)).to eql(2)
      end

    end
  end

end
