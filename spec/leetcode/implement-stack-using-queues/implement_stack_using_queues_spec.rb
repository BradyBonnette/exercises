require_relative '../../../leetcode/implement-stack-using-queues/implement_stack_using_queues.rb'

describe "Implement Stack Using Queues" do
  subject { LeetCode::ImplementStackUsingQueues.new }

  # context "site examples" do
  # end

  context "initialize" do
    it "should initialize an empty stack" do
      expect(subject.instance_variable_get(:@queue)).to eql([])
    end
  end

  context "#push" do
    it "should add a value onto the queue" do
      queue_count_before = subject.instance_variable_get(:@queue).size

      subject.push(1)

      queue_count_after = subject.instance_variable_get(:@queue).size

      expect(queue_count_after - queue_count_before).to eql(1)
    end

    it "should add multiple values queue" do
      queue_count_before = subject.instance_variable_get(:@queue).size

      subject.push(1)
      subject.push(2)
      subject.push(3)

      queue_count_after = subject.instance_variable_get(:@queue).size

      expect(queue_count_after - queue_count_before).to eql(3)
    end
  end

  context "#pop" do
    it "should return nil if stack is empty" do
      expect(subject.pop).to eql(nil)
    end

    it "should return top value and decrease stack size by one" do
      queue_count_before = subject.instance_variable_get(:@queue).size

      subject.push(1)
      popped_value = subject.pop

      queue_count_after = subject.instance_variable_get(:@queue).size

      expect(popped_value).to eql(1)
      expect(queue_count_after - queue_count_before).to eql(0)
    end

    it "should decrease the stack size appropriately with multiple calls" do
      subject.push(1)
      subject.push(2)
      subject.push(3)

      popped_value_1 = subject.pop
      popped_value_2 = subject.pop


      expect(popped_value_1).to eql(3)
      expect(popped_value_2).to eql(2)
      expect(subject.instance_variable_get(:@queue).size).to eql(1)
    end
  end

  context "#top" do
    it "should return nil if stack is empty" do
      expect(subject.top).to eql(nil)
    end

    it "should return top val for a single item" do
      subject.push(1)
      expect(subject.top).to eql(1)
    end

    it "should return top val for a multiple items" do
      subject.push(1)
      subject.push(2)
      subject.push(3)

      expect(subject.top).to eql(3)
    end
  end

  context "#empty" do
    it "should return true if stack has not pushed anything" do
      expect(subject.empty).to eql(true)
    end

    it "should return false if stack has an item" do
      subject.push(1)
      expect(subject.empty).to eql(false)
    end

    it "should return true if stack has an item that then gets pushed off" do
      subject.push(1)
      subject.pop
      expect(subject.empty).to eql(true)
    end

    it "should return false if stack goes through a series of pushes and pops that leaves an item" do
      subject.push(1)
      subject.push(2)
      subject.push(3)
      subject.push(4)
      subject.push(5)

      subject.pop
      subject.pop
      subject.pop
      subject.pop

      expect(subject.empty).to eql(false)
    end
  end

end
