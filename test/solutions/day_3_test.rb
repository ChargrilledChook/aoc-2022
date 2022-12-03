# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../solutions/day_3'

class Day3Test < MiniTest::Test
  def setup
    @input = %w[
      vJrwpWtwJgWrhcsFMMfFFhFp
      jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
      PmmdzqPrVvPwwTWBwg
      wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
      ttgJtRGJQctTZtZT
      CrZsJsPPZsGzwwsLwLmpwMDw
    ]
  end

  def test_part_one_example
    actual = Day3.solve(@input)
    expected = 157

    assert_equal expected, actual
  end

  def test_part_two_example
    actual = Day3.part_two(@input)
    expected = 70

    assert_equal expected, actual
  end
end
