require_relative '../../../leetcode/summary-ranges/summary_ranges.rb'

describe "Summary Ranges" do
  subject { LeetCode::SummaryRanges.new }

  context "site examples" do
    it 'should return ["0->2","4->5","7"] when nums = [0,1,2,4,5,7]' do
      expect(subject.summary_ranges([0,1,2,4,5,7])).to eql(["0->2","4->5","7"])
    end

    it 'should return ["0","2->4","6","8->9"] when nums = [0,2,3,4,6,8,9]' do
      expect(subject.summary_ranges([0,2,3,4,6,8,9])).to eql(["0","2->4","6","8->9"])
    end

    it 'should return [] when nums = []' do
      expect(subject.summary_ranges([])).to eql([])
    end

    it 'should return ["-1"] when nums = [-1]' do
      expect(subject.summary_ranges([-1])).to eql(["-1"])
    end

    it 'should return ["0"] when nums = [0]' do
      expect(subject.summary_ranges([0])).to eql(["0"])
    end
  end

  it 'should return ["0->1"] when nums = [0,1]' do
    expect(subject.summary_ranges([0,1])).to eql(["0->1"])
  end

  it 'should return ["0->2"] when nums = [0,1,2]' do
    expect(subject.summary_ranges([0,1,2])).to eql(["0->2"])
  end

  it 'should return ["0", "2->4"] when nums = [0,2,3,4]' do
    expect(subject.summary_ranges([0,2,3,4])).to eql(["0", "2->4"])
  end

  it 'should return ["0->3", "5"] when nums = [0,1,2,3,5]' do
    expect(subject.summary_ranges([0,1,2,3,5])).to eql(["0->3", "5"])
  end
end
