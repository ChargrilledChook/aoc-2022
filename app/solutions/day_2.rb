# frozen_string_literal: true

require_relative '../helpers/puzzle_input'
require_relative '../helpers/solution_helper'

# https://adventofcode.com/2022/day/2
class Day2
  extend SolutionHelper

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

  def self.result_matrix2
    {
      'A' => { 'X' => LOSS + 3, 'Y' => DRAW + 1, 'Z' => WIN + 2 },
      'B' => { 'X' => LOSS + 1, 'Y' => DRAW + 2, 'Z' => WIN + 3 },
      'C' => { 'X' => LOSS + 2, 'Y' => DRAW + 3, 'Z' => WIN + 1 }
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

  def self.part_two(data = input)
    data.map do |pair|
      them, me = pair.split(' ')

      result_matrix2[them][me]
    end.sum
  end
end
