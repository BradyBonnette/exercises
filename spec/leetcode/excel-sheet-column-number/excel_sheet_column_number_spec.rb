require_relative '../../../leetcode/excel-sheet-column-number/excel_sheet_column_number.rb'

describe "Excel Sheet Column Number" do
  subject { LeetCode::ExcelSheetColumnNumber.new }

  context "site examples" do
    # Input: columnTitle = "A"
    # Output: 1
    it "should return 1 when columnTitle = 'A'" do
      expect(subject.title_to_number("A")).to eql(1)
    end

    # Input: columnTitle = "AB"
    # Output: 28
    it "should return 28 when columnTitle = 'AB'" do
      expect(subject.title_to_number('AB')).to eql(28)
    end

    # Input: columnTitle = "ZY"
    # Output: 701
    it "should return 701 when columnTitle = 'ZY'" do
      expect(subject.title_to_number('ZY')).to eql(701)
    end

    # Input: columnTitle = "FXSHRXW"
    # Output: 2147483647
    it "should return 2147483647 when columnTitle = 'FXSHRXW'" do
      expect(subject.title_to_number('FXSHRXW')).to eql(2147483647)
    end

  end

  it "should return 2 when columnTitle = 'B'" do
    expect(subject.title_to_number("B")).to eql(2)
  end

  it "should return 25 when columnTitle = 'Y'" do
    expect(subject.title_to_number("Y")).to eql(25)
  end

  it "should return 27 when columnTitle = 'AA'" do
    expect(subject.title_to_number('AA')).to eql(27)
  end

  it "should return 702 when columnTitle = 'ZZ'" do
    expect(subject.title_to_number('ZZ')).to eql(702)
  end
end
