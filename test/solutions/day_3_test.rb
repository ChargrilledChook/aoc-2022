# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../solutions/day_3'

class Day3Test < MiniTest::Test
  def test_part_one_example
    input = %w[
      vJrwpWtwJgWrhcsFMMfFFhFp
      jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
      PmmdzqPrVvPwwTWBwg
      wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
      ttgJtRGJQctTZtZT
      CrZsJsPPZsGzwwsLwLmpwMDw
    ]
    actual = Day3.solve(input)
    expected = 157

    assert_equal expected, actual
  end
end
