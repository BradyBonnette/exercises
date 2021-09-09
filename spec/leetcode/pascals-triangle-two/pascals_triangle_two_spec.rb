require_relative '../../../leetcode/pascals-triangle-two/pascals_triangle_two.rb'

describe "Pascals Triangle Two" do
  subject { LeetCode::PascalsTriangleTwo.new }

  it "should return [1] when row_index = 0" do
    expect(subject.get_row(0)).to eql([1])
  end

  it "should return [1,1] when row_index = 1" do
    expect(subject.get_row(1)).to eql([1,1])
  end

  it "should return [1,2,1] when row_index = 2" do
    expect(subject.get_row(2)).to eql([1,2,1])
  end

  it "should return [1,3,2,1] when row_index = 3" do
    expect(subject.get_row(3)).to eql([1,3,3,1])
  end

  it "should return [1, 4, 6, 4, 1] when row_index = 4" do
    expect(subject.get_row(4)).to eql([1, 4, 6, 4, 1])
  end

  it "should return the correct data in reasonable time when row_index = 30" do
    expect(subject.get_row(33)).to eql(
    [
      1,
      33,
      528,
      5456,
      40920,
      237336,
      1107568,
      4272048,
      13884156,
      38567100,
      92561040,
      193536720,
      354817320,
      573166440,
      818809200,
      1037158320,
      1166803110,
      1166803110,
      1037158320,
      818809200,
      573166440,
      354817320,
      193536720,
      92561040,
      38567100,
      13884156,
      4272048,
      1107568,
      237336,
      40920,
      5456,
      528,
      33,
      1
    ])
  end
end
