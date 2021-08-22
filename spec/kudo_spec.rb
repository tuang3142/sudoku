# frozen_string_literal: true

RSpec.describe Kudo do
  it "has a version number" do
    expect(Kudo::VERSION).not_to be nil
  end

  # it "reads from input string then outputs a solved sudoku" do
  #   ["easy", "hard", "extreme"].each do |level|
  #     sudoku_string = File.read("spec/fixtures/#{level}.sudoku")
  #     sudoku = SudokuConverter.convert_to_array(sudoku_string)

  #     solved_sudoku = SudokuSolver.solve(sudoku)

  #     expect(SudokuValidator.check_solved(solved_sudoku)).to eq true
  #   end
  # end
end
