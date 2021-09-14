require_relative '../../../leetcode/min-stack/min_stack.rb'

describe "Path Sum" do
  subject { LeetCode::MinStack.new }

  context "site examples" do
    it "should expect what the site expects" do
      subject.push(-2)
      subject.push(0)
      subject.push(-3)
      expect(subject.get_min).to eql(-3)
      subject.pop
      expect(subject.top).to eql(0)
      expect(subject.get_min).to eql(-2)
    end
  end

  context "#initialize" do
    it "should initialize @current_min to nil" do
      expect(subject.instance_variable_get(:@current_min)).to eql(nil)
    end

    it "should initialize @stack to []" do
      expect(subject.instance_variable_get(:@stack)).to eql([])
    end
  end

  context "#push" do
    it "should record current min and add value to stack when called once" do
      subject.push(5)

      instance_stack = subject.instance_variable_get(:@stack)
      expect(instance_stack.length).to eql(1)
      expect(instance_stack.last.val).to eql(5)
      expect(instance_stack.last.captured_min).to eql(5)
    end

    it "should record current min and add value to stack when called multiple times" do
      subject.push(2)
      subject.push(10)
      subject.push(-3)

      instance_stack = subject.instance_variable_get(:@stack)

      expect(instance_stack.length).to eql(3)
      expect(instance_stack.last.val).to eql(-3)
      expect(instance_stack.last.captured_min).to eql(-3)
    end
  end

  context "#pop" do
    it "should return nil if stack is empty" do
      expect(subject.pop).to eql(nil)
    end

    it "should return correct value if stack had one item" do
      subject.push(5)

      expect(subject.pop).to eql(5)

      instance_stack = subject.instance_variable_get(:@stack)

      expect(instance_stack.length).to eql(0)
    end

    it "should return correct value if stack had multiple items" do
      subject.push(5)
      subject.push(10)
      subject.push(-20)

      expect(subject.pop).to eql(-20)

      instance_stack = subject.instance_variable_get(:@stack)

      expect(instance_stack.length).to eql(2)
    end
  end

  context "#top" do
    it "should return nil if stack is empty" do
      expect(subject.top).to eql(nil)
    end

    it "should return correct top value if stack has one item" do
      subject.push(42)

      expect(subject.top).to eql(42)
    end

    it "should return correct top value if stack has multiple items" do
      subject.push(-50)
      subject.push(22)
      subject.push(123)

      expect(subject.top).to eql(123)
    end
  end

  context "#get_min" do
    it "should return nil if stack is empty" do
      expect(subject.get_min).to eql(nil)
    end

    it "should return correct value if stack has one item" do
      subject.push(10)

      expect(subject.get_min).to eql(10)
    end

    it "should return correct value for pushing multiple items in ascending order" do
      subject.push(-1)
      subject.push(5)
      subject.push(80)

      expect(subject.get_min).to eql(-1)
    end

    it "should return correct value for pushing multiple items in descending order" do
      subject.push(100)
      subject.push(22)
      subject.push(-45)

      expect(subject.get_min).to eql(-45)
    end

    it "should return correct value for pushing multiple items in various orders" do
      subject.push(12)
      subject.push(-123)
      subject.push(15)
      subject.push(0)
      subject.push(-2)

      expect(subject.get_min).to eql(-123)
    end

    it "should return correct value when pop is called and pop eliminates lowest value" do
      subject.push(-20)
      subject.push(10)
      subject.push(-100)

      subject.pop

      expect(subject.get_min).to eql(-20)
    end
  end

  it "should run well with a large data set" do
    max = (3*(10**4))

    max.times do |i|
      subject.push(i)
    end

    max.times do |i|
      subject.top
      subject.get_min
      subject.pop
    end
  end

end
