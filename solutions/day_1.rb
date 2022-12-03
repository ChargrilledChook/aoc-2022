# frozen_string_literal: true

require_relative '../helpers/puzzle_input'
require_relative 'solution'

# https://adventofcode.com/2022/day/1
class Day1 < Solution
  def self.solve(elf_count)
    slices = input.slice_when { |elem| elem == '' }

    slices.map { |slice| slice.map(&:to_i).sum }.max(elf_count).sum
  end

  def self.part_one
    solve(1)
  end

  def self.part_two
    solve(3)
  end
end