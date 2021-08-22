# frozen_string_literal: true

RSpec.describe Kudo do
  it "has a version number" do
    expect(Kudo::VERSION).not_to be nil
  end

  it "pings" do
    expect(Kudo.ping).to eq "pong!"
  end

  describe ".solve" do
    it "solves sudoku puzzles in many levels of difficulty" do
      %w[easy hard extreme].each do |level|
        sudoku = open_puzzle(level)

        expect(Kudo.solve(sudoku))
          .to eq send(:"#{level}_solution")
      end
    end

    def easy_solution
      <<EOS.sub(/\s+$/, "")
8 5 9 6 1 2 4 3 7
7 2 3 8 5 4 1 6 9
1 6 4 3 7 9 5 2 8
9 8 6 1 4 7 3 5 2
3 7 5 2 6 8 9 1 4
2 4 1 5 9 3 7 8 6
4 3 2 9 8 1 6 7 5
6 1 7 4 2 5 8 9 3
5 9 8 7 3 6 2 4 1
EOS
    end

    def hard_solution
      <<EOS.sub(/\s+$/, "")
8 5 9 6 1 2 4 3 7
7 2 3 8 5 4 1 6 9
1 6 4 3 7 9 5 2 8
9 8 6 1 4 7 3 5 2
3 7 5 2 6 8 9 1 4
2 4 1 5 9 3 7 8 6
4 3 2 9 8 1 6 7 5
6 1 7 4 2 5 8 9 3
5 9 8 7 3 6 2 4 1
EOS
    end

    def extreme_solution
      <<EOS.sub(/\s+$/, "")
3 2 9 1 7 5 4 6 8
1 7 4 8 2 6 3 9 5
6 5 8 3 9 4 7 2 1
2 6 3 7 1 8 5 4 9
9 1 5 6 4 2 8 7 3
4 8 7 5 3 9 6 1 2
5 9 1 4 8 7 2 3 6
7 3 6 2 5 1 9 8 4
8 4 2 9 6 3 1 5 7
EOS
    end
  end
end
