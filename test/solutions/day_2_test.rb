# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../solutions/day_2'

class Day2Test < MiniTest::Test
  def test_part_one_example
    input = [
    'A Y',
    'B X',
    'C Z'
    ]
    actual = Day2.part_one(input)
    expected = 15

    assert_equal expected, actual
  end

  def test_another_part_one
    input = [
      'A Y',
      'B X',
      'B X',
      'C Y',
      'B X',
      'A Z',
      'B X',
      'B X'
    ]

    actual = Day2.part_one(input)
    expected = 18

    assert_equal expected, actual
  end
end
