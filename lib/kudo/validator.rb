# frozen_string_literal: true

require "set"

module Kudo
  class Validator
    class << self
      def check_solved(sudoku)
        check_complete(sudoku) && check_valid(sudoku)
      end

      def check_complete(sudoku)
        Operator.get_empty_cells(sudoku).empty?
      end

      def check_valid(sudoku)
        check_rows(sudoku) && check_columns(sudoku) && check_subgrids(sudoku)
      end

      private

      SUDOKU_RANGE = (0..8)

      def check_rows(sudoku)
        SUDOKU_RANGE.all? { |i| check_unique(Operator.get_row(sudoku, i)) }
      end

      def check_columns(sudoku)
        SUDOKU_RANGE.all? { |i| check_unique(Operator.get_column(sudoku, i)) }
      end

      def check_subgrids(sudoku)
        SUDOKU_RANGE.all? do |i|
          SUDOKU_RANGE.all? do |j|
            check_unique(Operator.get_subgrid(sudoku, i, j))
          end
        end
      end

      def check_unique(array)
        non_zero_arr = array.reject(&:zero?)
        non_zero_arr.size == non_zero_arr.to_set.size
      end
    end
  end
end
