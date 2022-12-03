# frozen_string_literal: true

require_relative 'main'
require 'minitest/test_task'

Minitest::TestTask.create

desc 'Get puzzle input from AOC'
task :fetch, :day do |_t, args|
  day = args[:day] || Date.today.day
  PuzzleInput.fetch(day)
end

desc 'Solve the puzzle and save the result'
task :solve, :day do |_t, args|
  day = args[:day]
  data = YAML.load_file 'solutions.yaml'
  day_class = Object.const_get("Day#{day}")

  data["day#{day}"]['part_one'] = day_class.part_one
  data["day#{day}"]['part_two'] = day_class.part_two

  File.open('solutions.yaml', 'w') { |f| YAML.dump(data, f) }
end

desc 'Print current result to stdout'
task :print, :day do |_t, args|
  day = args[:day]
  day_class = Object.const_get("Day#{day}")

  pp day_class.part_one
  pp day_class.part_two
end

desc 'Bootstrap files for a day'
task :bootstrap, :day do |_t, args|
  day = args[:day]
  solution_file = <<~FILE
    # frozen_string_literal: true

    require_relative '../helpers/puzzle_input'
    require_relative 'solution'

    # https://adventofcode.com/2022/day/#{day}
    class Day#{day} < Solution
      def self.solve(data = input)
      end

      def self.part_one
        solve
      end

      def self.part_two
      end
    end
  FILE

  test_file = <<~FILE
    # frozen_string_literal: true

    require 'minitest/autorun'
    require_relative '../../solutions/day_3'

    class Day3Test < MiniTest::Test
      def setup
        @input = %w[

        ]
      end

      def test_part_one_example
        actual = Day#{day}.solve(@input)
        expected = 1

        assert_equal expected, actual
      end

      def test_part_two_example
        actual = Day#{day}.solve(@input)
        expected = 2

        assert_equal expected, actual
      end
    end
  FILE

  File.open("solutions/day_#{day}.rb", 'w+') do |f|
    f << solution_file
  end

  File.open("test/solutions/day_#{day}_test.rb", 'w+') do |f|
    f << test_file
  end
end
