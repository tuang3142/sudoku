# frozen_string_literal: true

require "thor"
require "kudo"

module Kudo
  class CLI < Thor
    desc "ping", "pong!"
    def ping
      puts Kudo.ping
    end

    desc "solve INPUT", "Solves the sudoku given in the input file"
    def solve(file_name)
      sudoku = File.read(file_name)
      Kudo.solve(sudoku)
    end
  end
end
