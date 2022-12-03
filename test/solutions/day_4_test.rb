# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../solutions/day_3'

class Day3Test < MiniTest::Test
  def setup
    @input = %w[

    ]
  end

  def test_part_one_example
    actual = Day4.solve(@input)
    expected = 1

    assert_equal expected, actual
  end

  def test_part_two_example
    actual = Day4.solve(@input)
    expected = 2

    assert_equal expected, actual
  end
end

