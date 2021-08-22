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

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tuang3142/sudoku.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
