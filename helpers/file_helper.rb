require 'yaml'

class FileHelper
  def self.run(...)
    new(...).run
  end

  def self.add_solution_yaml(day)
    data = YAML.load_file 'solutions.yaml'
    day_class = Object.const_get("Day#{day}")

    data["day#{day}"]['part_one'] = day_class.part_one
    data["day#{day}"]['part_two'] = day_class.part_two

    File.open('solutions.yaml', 'w') { |f| YAML.dump(data, f) }
  end

  def initialize(day)
    @day = day
  end

  def run
    solution_file
    test_file
    add_dependency
    init_solution_yaml
  end

  # private

  attr_reader :day

  def solution_file
    solution_file = <<~FILE
      # frozen_string_literal: true

      require_relative '../helpers/puzzle_input'
      require_relative '../helpers/solution_helper'

      # https://adventofcode.com/2022/day/#{day}
      class Day#{day}
        extend SolutionHelper

        def self.solve(data = input)
        end

        def self.part_one
          solve
        end

        def self.part_two
        end
      end
    FILE

    File.open("solutions/day_#{day}.rb", 'w+') do |f|
      f << solution_file
    end
  end

  def test_file
    test_file = <<~FILE
      # frozen_string_literal: true

      require 'minitest/autorun'
      require_relative '../../solutions/day_#{day}'

      class Day#{day}Test < MiniTest::Test
        def setup
          @input = %w[

          ]
        end

        def test_part_one_example
          skip

          actual = Day#{day}.solve(@input)
          expected = 1

          assert_equal expected, actual
        end

        def test_part_two_example
          skip

          actual = Day#{day}.solve(@input)
          expected = 2

          assert_equal expected, actual
        end
      end
    FILE

    File.open("test/solutions/day_#{day}_test.rb", 'w+') do |f|
      f << test_file
    end
  end

  def add_dependency
    File.open('main.rb', 'a+') do |f|
      f << "require_relative 'solutions/day_#{day}'"
    end
  end

  def init_solution_yaml
    data = YAML.load_file 'solutions.yaml'

    data["day#{day}"] = {}
    data["day#{day}"]['part_one'] = nil
    data["day#{day}"]['part_two'] = nil

    File.open('solutions.yaml', 'w') { |f| YAML.dump(data, f) }
  end
end
