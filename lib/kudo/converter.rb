# frozen_string_literal: true

module Kudo
  class Converter
    def self.convert_to_array(sudoku_string)
      sudoku_string
        .split("")
        .select { |char| "0" <= char && char <= "9" }
        .map(&:to_i)
        .each_slice(9)
        .to_a
    end

    def self.convert_to_string(sudoku_grid)
      sudoku_grid
        .map { |row| row.join(" ") }
        .join("\n")
    end
  end
end
