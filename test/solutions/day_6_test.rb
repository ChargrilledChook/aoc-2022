# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../app/solutions/day_6'

class Day6Test < MiniTest::Test
  # def setup
  #   @input = 'mjqjpqmgbljsphdztnvjfqwrcgsmlb'
  # end

  def test_part_one_example_1
    input = 'mjqjpqmgbljsphdztnvjfqwrcgsmlb'

    actual = Day6.part_one(input)
    expected = 7

    assert_equal expected, actual
  end

  def test_part_one_example_2
    input = 'bvwbjplbgvbhsrlpgdmjqwftvncz'

    actual = Day6.part_one(input)
    expected = 5

    assert_equal expected, actual
  end

  def test_part_one_example_3
    input = 'nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg'

    actual = Day6.part_one(input)
    expected = 10

    assert_equal expected, actual
  end

  def test_part_two_example
    skip

    actual = Day6.solve(@input)
    expected = 2

    assert_equal expected, actual
  end
end
