 # frozen_string_literal: true

require_relative "kudo/version"
require_relative "kudo/ping"
require_relative "kudo/solver"
require_relative "kudo/converter"
require_relative "kudo/operator"
require_relative "kudo/validator"

module Kudo
  module_function

  def solve(sudoku_string)
    grid = Converter.convert_to_array(sudoku_string)
    raise "Sudoku is invalid!" unless Validator.check_valid(grid)

    Converter.convert_to_string(Solver.solve(grid))
  end
end
