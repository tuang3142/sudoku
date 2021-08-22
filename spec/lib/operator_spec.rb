# frozen_string_literal: true

RSpec.describe Kudo::Operator do
  sudoku = [
    [0, 5, 9, 6, 1, 2, 4, 3, 7],
    [7, 2, 3, 8, 5, 4, 1, 6, 9],
    [1, 6, 4, 0, 7, 9, 5, 2, 8],
    [9, 8, 6, 1, 4, 7, 3, 5, 2],
    [3, 7, 5, 2, 6, 8, 9, 1, 4],
    [2, 4, 1, 5, 9, 3, 7, 8, 6],
    [4, 3, 2, 9, 8, 1, 6, 7, 5],
    [6, 1, 7, 4, 2, 5, 8, 9, 3],
    [5, 9, 8, 7, 3, 6, 2, 4, 1]
  ]

  describe ".get_empty_cells" do
    it "returns the coordinates of cells that are 0" do
      expect(described_class.get_empty_cells(sudoku)).to eq [[0, 0], [2, 3]]
    end
  end

  describe ".get_row" do
    it "returns an array of a specific row" do
      expect(described_class.get_row(sudoku, 0)).to eq [0, 5, 9, 6, 1, 2, 4, 3, 7]
    end
  end

  describe ".get_column" do
    it "returns an array of a specific column" do
      expect(described_class.get_row(sudoku, 1)).to eq [7, 2, 3, 8, 5, 4, 1, 6, 9]
    end
  end

  describe ".get_subgrid" do
    it "returns an array of a specific 3x3 subgrid" do
      expect(described_class.get_subgrid(sudoku, 2, 3)).to eq [6, 1, 2, 8, 5, 4, 0, 7, 9]
    end
  end
end
