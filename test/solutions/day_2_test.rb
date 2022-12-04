# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../solutions/day_2'

class Day2Test < MiniTest::Test
  def setup
    @input = [
      'A Y',
      'B X',
      'C Z'
    ]
  end

  def test_part_one_example
    actual = Day2.solve(@input)
    expected = 15

    assert_equal expected, actual
  end

  def test_part_two_example
    actual = Day2.part_two(@input)
    expected = 12

    assert_equal expected, actual
  end
end
