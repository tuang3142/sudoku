# frozen_string_literal: true

RSpec.describe Kudo::Validator do
  valid_sudoku = [
    [0, 5, 9, 6, 1, 2, 4, 3, 7],
    [0, 2, 3, 8, 5, 4, 1, 6, 9],
    [1, 6, 4, 0, 7, 9, 5, 2, 8],
    [9, 8, 6, 1, 4, 7, 3, 5, 2],
    [3, 7, 5, 2, 6, 8, 9, 1, 4],
    [2, 4, 1, 5, 9, 3, 7, 8, 6],
    [4, 3, 2, 9, 8, 1, 6, 7, 5],
    [6, 1, 7, 4, 2, 5, 8, 9, 3],
    [5, 9, 8, 7, 3, 6, 2, 4, 1]
  ]

  invalid_sudoku = [
    [0, 2, 9, 6, 1, 2, 4, 3, 7],
    [2, 2, 3, 8, 5, 4, 1, 6, 9],
    [1, 6, 4, 0, 7, 9, 5, 2, 8],
    [9, 8, 6, 1, 4, 7, 3, 5, 2],
    [3, 7, 5, 2, 6, 8, 9, 1, 4],
    [2, 4, 1, 5, 9, 3, 7, 8, 6],
    [4, 3, 2, 9, 8, 1, 6, 7, 5],
    [6, 1, 7, 4, 2, 5, 8, 9, 3],
    [5, 9, 8, 7, 3, 6, 2, 4, 1]
  ]

  describe ".check_complete" do
    it "returns if a sudoku contains 0" do
      expect(described_class.check_complete(valid_sudoku)).to eq false
    end
  end

  describe ".check_valid" do
    it "returns if a sudoku violate duplication rules" do
      expect(described_class.check_valid(valid_sudoku)).to eq true
      expect(described_class.check_valid(invalid_sudoku)).to eq false
    end
  end
end

