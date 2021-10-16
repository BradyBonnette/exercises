require_relative '../../../leetcode/implement-queue-using-stacks/implement_queue_using_stacks.rb'

describe "Implement Queue Using Stacks" do
  subject { LeetCode::ImplementQueueUsingStacks.new }

  context "#initalize" do
    it "shoud have an empty internal stack" do
      expect(subject.instance_variable_get(:@stack).size).to eql(0)
    end
  end

  context "#push" do
    it "should push one item into the queue" do
      subject.push(1)

      expect(subject.instance_variable_get(:@stack).size).to eql(1)
    end

    it "should push multiple items to the queue" do
      subject.push(1)
      subject.push(2)
      subject.push(3)

      expect(subject.instance_variable_get(:@stack).size).to eql(3)
    end
  end

  context "#pop" do
    it "should return nil if the queue is empty" do
      val = subject.pop

      expect(val).to eql(nil)
      expect(subject.instance_variable_get(:@stack).size).to eql(0)
    end

    it "should return only item if the queue has one item" do
      subject.push(1)

      val = subject.pop

      expect(val).to eql(1)
      expect(subject.instance_variable_get(:@stack).size).to eql(0)
    end

    it "should return multiple items in the correct order" do
      subject.push(1)
      subject.push(2)
      subject.push(3)

      val_1 = subject.pop
      val_2 = subject.pop
      val_3 = subject.pop

      expect(val_1).to eql(1)
      expect(val_2).to eql(2)
      expect(val_3).to eql(3)

      expect(subject.instance_variable_get(:@stack).size).to eql(0)
    end
  end

  context "#peek" do
    it "should return nil if the queue is empty" do
      val = subject.peek

      expect(val).to eql(nil)
    end

    it "should return only value if the queue has one value" do
      subject.push(1)
      expect(subject.peek).to eql(1)
    end

    it "should return the correct value after multiple items are pushed" do
      subject.push(1)
      subject.push(2)
      subject.push(3)

      expect(subject.peek).to eql(1)

      subject.pop

      expect(subject.peek).to eql(2)

      subject.pop

      expect(subject.peek).to eql(3)

      subject.pop

      expect(subject.peek).to eql(nil)
    end
  end

  context "#empty" do
    it "should return true if nothing was pushed" do
      expect(subject.empty).to eql(true)
    end

    it "should return false if one item was pushed" do
      subject.push(1)

      expect(subject.empty).to eql(false)
    end

    it "should return false if multiple items were pushed" do
      subject.push(1)
      subject.push(2)
      subject.push(3)

      expect(subject.empty).to eql(false)
    end

    it "should return false if multiple items were pushed but only one was popped" do
      subject.push(1)
      subject.push(2)
      subject.push(3)
      subject.pop

      expect(subject.empty).to eql(false)
    end

    it "should return true if multiple items were pushed and same amount of items were popped" do
      subject.push(1)
      subject.push(2)
      subject.push(3)
      subject.pop
      subject.pop
      subject.pop

      expect(subject.empty).to eql(true)
    end
  end

end
