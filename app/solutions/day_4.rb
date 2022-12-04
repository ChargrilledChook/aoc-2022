# frozen_string_literal: true

require_relative '../helpers/puzzle_input'
require_relative '../helpers/solution_helper'

# https://adventofcode.com/2022/day/4
class Day4
  extend SolutionHelper

  def self.solve(data = input)
    data.count do |pair|
      first_range, second_range = create_ranges(pair)
      first_range.cover?(second_range) || second_range.cover?(first_range)
    end
  end

  def self.part_one(...)
    solve(...)
  end

  def self.part_two(data = input)
    data.count do |pair|
      first_range, second_range = create_ranges(pair)
      first_range.to_a.any? { |num| second_range.include?(num) }
    end
  end

  def self.create_ranges(pair)
    elf1, elf2 = pair.split(',')
    elf1_lower, elf1_upper = elf1.split('-')
    elf2_lower, elf2_upper = elf2.split('-')

    [(elf1_lower.to_i)..(elf1_upper.to_i), (elf2_lower.to_i)..(elf2_upper.to_i)]
  end
end
