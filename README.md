

Run test suite by running `bundle exec rspec`

To un-skip a test, remove the `x` in front of `context`

To run a single test in isolation, run `bundle exec rspec spec/pattern_generator_spec.rb:<line number>` and that entire block will run. (ex. `bundle exec rspec spec/pattern_generator_spec.rb:11`, `bundle exec rspec spec/pattern_generator_spec.rb:10`, etc)
