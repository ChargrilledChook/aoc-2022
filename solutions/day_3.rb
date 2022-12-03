# frozen_string_literal: true

require_relative '../helpers/puzzle_input'
require_relative 'solution'

# https://adventofcode.com/2022/day/3
# TODO: Find a better solution. Probably regex based
class Day3 < Solution
  def self.priority
    legend = ('a'..'z').to_a + ('A'..'Z').to_a
    legend.each_with_object(Hash.new(0)).with_index { |(letter, hash), index| hash[letter] = index + 1 }
  end

  def self.solve(data = input)
    data.map do |bag|
      chars = bag.chars.each_slice(bag.size / 2).to_a
      duplicate = chars.first & chars.last
      priority[duplicate.first]
    end.sum
  end

  def self.part_one
    solve
  end

  def self.part_two(data = input)
    data.each_slice(3).map do |a, b, c|
      duplicate = a.chars & b.chars & c.chars

      priority[duplicate.first]
    end.sum
  end
end
