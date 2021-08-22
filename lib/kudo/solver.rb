# frozen_string_literal: true

module Kudo
  class Solver
    class << self
      def solve(sudoku)
        empty_cells = Operator.get_empty_cells(sudoku)
        try_solve(sudoku, empty_cells)
      end

      private

      def try_solve(sudoku, empty_cells)
        return sudoku if empty_cells.empty?

        i, j = empty_cells.last
        (1..9).each do |num|
          next if Operator.get_row(sudoku, i).include?(num) ||
                  Operator.get_column(sudoku, j).include?(num) ||
                  Operator.get_subgrid(sudoku, i, j).include?(num)
          sudoku[i][j] = num
          empty_cells.pop
          result = try_solve(sudoku, empty_cells)
          return result if result
          sudoku[i][j] = 0
          empty_cells.append([i, j])
        end

        nil
      end
    end
  end
end
