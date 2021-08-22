# frozen_string_literal: true

require 'thor'

module Kudo
  class CLI < Thor
    desc "ping pong!"
    def ping
      "pong!"
    end

    desc "solve INPUT", "Solves the sudoku given in the input"
    def solve
      Sudoku.new
    end
  end
end
