# frozen_string_literal: true

RSpec.describe Kudo::Converter do
  describe ".convert_to_array" do
    it "converts valid input string to array" do
      sudoku = open_puzzle("easy")

      expect(described_class.convert_to_array(sudoku))
        .to eq [
          [0, 5, 9, 6, 1, 2, 4, 3, 7],
          [7, 2, 3, 0, 5, 4, 1, 6, 9],
          [1, 6, 0, 3, 7, 9, 5, 2, 8],
          [9, 8, 6, 0, 4, 7, 3, 5, 2],
          [3, 7, 5, 2, 0, 8, 0, 1, 4],
          [2, 4, 0, 5, 9, 3, 7, 8, 6],
          [0, 3, 2, 9, 8, 1, 6, 7, 5],
          [6, 1, 7, 0, 2, 5, 8, 9, 3],
          [5, 9, 8, 7, 3, 6, 0, 4, 1]
        ]
    end

  end
end
