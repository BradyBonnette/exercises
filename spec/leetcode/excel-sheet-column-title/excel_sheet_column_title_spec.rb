require_relative '../../../leetcode/excel-sheet-column-title/excel_sheet_column_title.rb'

describe "Excel Sheet Column Title" do
  subject { LeetCode::ExcelSheetColumnTitle.new }

  context "site examples" do
    # Input: columnNumber = 1
    # Output: "A"
    it "should return A when columnNumber = 1" do
      expect(subject.convert_to_title(1)).to eql("A")
    end

    # Input: columnNumber = 28
    # Output: "AB"
    it "should return A when columnNumber = 28" do
      expect(subject.convert_to_title(28)).to eql("AB")
    end

    # Input: columnNumber = 701
    # Output: "ZY"
    it "should return A when columnNumber = 701" do
      expect(subject.convert_to_title(701)).to eql("ZY")
    end

    # Input: columnNumber = 2147483647
    # Output: "FXSHRXW"
    it "should return A when columnNumber = 2147483647" do
      expect(subject.convert_to_title(2147483647)).to eql("FXSHRXW")
    end

  end

  it "should return A when columnNumber = 2" do
    expect(subject.convert_to_title(2)).to eql("B")
  end

  it "should return Z when columnNumber = 26" do
    expect(subject.convert_to_title(26)).to eql("Z")
  end
end
