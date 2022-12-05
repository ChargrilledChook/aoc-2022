# frozen_string_literal: true

require_relative '../helpers/puzzle_input'
require_relative '../helpers/solution_helper'
require 'debug'

# https://adventofcode.com/2022/day/5
class Day5
  extend SolutionHelper

  def self.solve(data = input, reverse: true)
    crates, instructions = split_input(data)
    instructions.each { |instruction| move_crate(crates, instruction, reverse:) }
    crates.map(&:first).join
  end

  def self.part_one(...)
    solve(...)
  end

  def self.part_two(data = input)
    solve(data, reverse: false)
  end

  def self.split_input(data)
    crates, instructions = data.slice_before('').to_a
    instructions.shift
    [convert_to_stack(crates), convert_to_instructions(instructions)]
  end

  def self.convert_to_stack(crates)
    crates.map(&:chars)
          .transpose
          .filter_map { |row| row.filter { |char| char.match?(/[A-Z]/) } if row.last.match?(/\d/) } # 🤔
  end

  def self.convert_to_instructions(instructions)
    instructions.map { |row| row.scan(/\d+/) }
  end

  def self.move_crate(crates, instructions, reverse: true)
    count, from, to = instructions.map(&:to_i)
    moved = crates[from - 1].shift(count)
    pattern = reverse ? moved.reverse : moved
    crates[to - 1].unshift(*pattern)
  end
end
