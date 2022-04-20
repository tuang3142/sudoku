# Kudo

"Yet another sudoku solver" - *some one famous, 2021*

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kudo'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install kudo

## Usage

```
❯ kudo
Commands:
  kudo help [COMMAND]  # Describe available commands or one specific command
  kudo ping            # pong!
  kudo solve INPUT     # Solves the sudoku given in the input file

❯ cat extreme.sudoku
0 2 9 1 0 0 0 6 0
0 7 0 0 0 0 0 0 5
0 0 0 3 0 4 0 0 0
0 0 3 0 0 0 0 0 9
0 0 0 6 4 0 8 0 0
0 0 0 5 3 0 0 0 2
0 9 0 0 0 0 2 0 0
0 0 0 2 0 0 0 0 0
8 0 0 0 0 0 0 5 7

❯ kudo solve extreme.sudoku
3 2 9 1 7 5 4 6 8
1 7 4 8 2 6 3 9 5
6 5 8 3 9 4 7 2 1
2 6 3 7 1 8 5 4 9
9 1 5 6 4 2 8 7 3
4 8 7 5 3 9 6 1 2
5 9 1 4 8 7 2 3 6
7 3 6 2 5 1 9 8 4
8 4 2 9 6 3 1 5 7
```

## Algorithm

```ruby
# lib/kudo/solver.rb

def solve(sudoku)
  empty_cells = Operator.get_empty_cells(sudoku)
  try_solve(sudoku, empty_cells)
end

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
```

The backtracking strategy is as follows:

- Get all the empty cells coordinates `empty_cells` beforehand to save time while backtracking
- For each empty cell, try a number from 1 to 9 if it does not violate its row, column, and 3x3 subgrid
- Remove it from `empty cells` then perform the recursion.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tuang3142/sudoku.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
