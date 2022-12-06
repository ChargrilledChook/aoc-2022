# frozen_string_literal: true

require_relative '../helpers/puzzle_input'
require_relative '../helpers/solution_helper'

# https://adventofcode.com/2022/day/6
class Day6
  extend SolutionHelper

  def self.solve(data = input, marker = 4)
    data.first.chars.each_cons(marker).with_index { |chunk, idx| return idx + marker if chunk.uniq.size == chunk.size }
  end

  def self.part_one(...)
    solve(...)
  end

  def self.part_two(data = input)
    solve(data, 14)
  end
end
