# Triangles

Determines the type of a triangle.

It takes the lengths of the triangle's three sides as input, and return whether the triangle is equilateral, isosceles or scalene.

## Installation

### Local

Dependencies:

  * ruby 2.x
  * bundler

Install dependent libraries:

    $ bundle install

### Docker

Dependencies:

  * docker
  * docker-compose

## Usage

### Local

    $ bundle exec triangles 1 2 2

### Docker

    $ docker-compose run --rm triangles triangles 1 2 3

## Running tests

### Local

    $ bundle exec rake spec

### Docker

    $ docker-compose run --rm triangles rake spec

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment. Run `bundle exec triangles` to use the gem in this directory, ignoring other installed copies of this gem.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lucasmundim/triangles.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
