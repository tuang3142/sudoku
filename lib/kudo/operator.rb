# frozen_string_literal: true

class Kudo::Operator
  class << self
    def get_empty_cells(sudoku)
      empty_cells = []
      9.times do |i|
        9.times do |j|
          empty_cells.append([i, j]) if sudoku[i][j].zero?
        end
      end

      empty_cells
    end

    def get_row(sudoku, i)
      sudoku[i]
    end

    def get_column(sudoku, j)
      sudoku.map { |row| row[j] }
    end

    def get_subgrid(sudoku, i, j)
      row = i / 3 * 3
      col = j / 3 * 3
      subgrid = []
      (row..row + 2).each do |r|
        (col..col + 2).each do |c|
          subgrid << sudoku[r][c]
        end
      end
      subgrid
    end
  end
end
