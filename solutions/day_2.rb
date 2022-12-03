# frozen_string_literal: true

require_relative '../helpers/puzzle_input'
require_relative 'solution'

# https://adventofcode.com/2022/day/2
class Day2 < Solution
  WIN = 6
  DRAW = 3
  LOSS = 0

  def self.scores
    {
      'X' => 1,
      'Y' => 2,
      'Z' => 3
    }
  end

  def self.result_matrix
    {
      'A' => { 'X' => DRAW, 'Y' => WIN, 'Z' => LOSS },
      'B' => { 'X' => LOSS, 'Y' => DRAW, 'Z' => WIN },
      'C' => { 'X' => WIN, 'Y' => LOSS, 'Z' => DRAW }
    }
  end

  def self.solve(data = input)
    data.map do |pair|
      them, me = pair.split(' ')

      result_matrix[them][me] + scores[me]
    end.sum
  end

  def self.part_one(...)
    solve(...)
  end

  def self.part_two
  end
end
