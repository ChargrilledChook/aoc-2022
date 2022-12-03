# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../solutions/day_1'

class Day1Test < MiniTest::Test
  def setup
    @input = [
      '1000',
      '2000',
      '3000',
      '',
      '4000',
      '',
      '5000',
      '6000',
      '',
      '7000',
      '8000',
      '9000',
      '',
      '10000'
    ]
  end

  def test_part_one_example
    actual = Day1.solve(1, @input)
    expected = 24_000

    assert_equal expected, actual
  end

  def test_part_two_example
    actual = Day1.solve(3, @input)
    expected = 45_000

    assert_equal expected, actual
  end
end
