# frozen_string_literal: true

require_relative '../helpers/puzzle_input'
require_relative '../helpers/solution_helper'
require 'debug'

# https://adventofcode.com/2022/day/5
class Day5
  extend SolutionHelper

  def self.solve(data = input)
    crates = convert_to_stack(data)
    instructions = convert_to_instructions(data)
    instructions.each { |instruction| move_crate(crates, instruction) }
    crates.map(&:first).join
  end

  def self.part_one
    solve
  end

  def self.part_two(data = input)
    crates = convert_to_stack(data)
    instructions = convert_to_instructions(data)
    instructions.each { |instruction| move_crate_in_chunk(crates, instruction) }
    crates.map(&:first).join
  end

  def self.split_input(data = input)
    crates, instructions = data.slice_before('').to_a
    instructions.shift
    [crates, instructions]
  end

  def self.convert_to_stack(data = input)
    crates = split_input(data).first

    crates.map(&:chars)
          .transpose
          .select { |row| row.last.match?(/\d/) }
          .map { |row| row.select { |char| char.match?(/[A-Z]/) } }
  end

  def self.convert_to_instructions(data = input)
    instructions = split_input(data).last
    instructions.map { |row| row.scan(/\d+/) }
  end

  def self.move_crate(crates, instructions)
    count, from, to = instructions.map(&:to_i)
    moved = crates[from - 1].shift(count)
    crates[to - 1].unshift(*moved.reverse)
  end

  # Lazy
  def self.move_crate_in_chunk(crates, instructions)
    count, from, to = instructions.map(&:to_i)
    moved = crates[from - 1].shift(count)
    crates[to - 1].unshift(*moved)
  end
end
