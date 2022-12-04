# frozen_string_literal: true

require_relative '../helpers/puzzle_input'
require_relative '../helpers/solution_helper'

# https://adventofcode.com/2022/day/1
class Day1
  extend SolutionHelper

  def self.solve(elf_count, data = input)
    slices = data.slice_when { |elem| elem == '' }
    slices.map { |slice| slice.map(&:to_i).sum }.max(elf_count).sum
  end

  def self.part_one
    solve(1)
  end

  def self.part_two
    solve(3)
  end
end
