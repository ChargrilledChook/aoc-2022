# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../app/solutions/day_4'

class Day4Test < MiniTest::Test
  def setup
    @input = %w[
      2-4,6-8
      2-3,4-5
      5-7,7-9
      2-8,3-7
      6-6,4-6
      2-6,4-8
    ]
  end

  def test_part_one_example
    actual = Day4.solve(@input)
    expected = 2

    assert_equal expected, actual
  end

  def test_part_two_example
    actual = Day4.part_two(@input)
    expected = 4

    assert_equal expected, actual
  end
end
