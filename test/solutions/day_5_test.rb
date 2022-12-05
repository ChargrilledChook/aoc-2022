# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../app/solutions/day_5'

class Day5Test < MiniTest::Test
  def setup
    @input = [
      '    [D]    ',
      '[N] [C]    ',
      '[Z] [M] [P]',
      ' 1   2   3 ',
      '',
      'move 1 from 2 to 1',
      'move 3 from 1 to 3',
      'move 2 from 2 to 1',
      'move 1 from 1 to 2'
    ]
  end

  def test_splitting_input_one
    actual = Day5.split_input(@input).first
    expected = [
      '    [D]    ',
      '[N] [C]    ',
      '[Z] [M] [P]',
      ' 1   2   3 '
    ]

    assert_equal expected, actual
  end

  def test_splitting_input_two
    actual = Day5.split_input(@input).last
    expected = [
      'move 1 from 2 to 1',
      'move 3 from 1 to 3',
      'move 2 from 2 to 1',
      'move 1 from 1 to 2'
    ]

    assert_equal expected, actual
  end

  def test_converting_input_to_stack
    actual = Day5.convert_to_stack(@input)
    expected = [
      %w[N Z],
      %w[D C M],
      %w[P]
    ]

    assert_equal expected, actual
  end

  def test_converting_input_to_instructions
    actual = Day5.convert_to_instructions(@input)
    expected = [%w[1 2 1], %w[3 1 3], %w[2 2 1], %w[1 1 2]]

    assert_equal expected, actual
  end

  def test_part_one_example
    actual = Day5.solve(@input)
    expected = 'CMZ'

    assert_equal expected, actual
  end

  def test_part_two_example
    actual = Day5.part_two(@input)
    expected = 'MCD'

    assert_equal expected, actual
  end
end
