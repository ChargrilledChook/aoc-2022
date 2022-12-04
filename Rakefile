# frozen_string_literal: true

require_relative 'main'
require 'minitest/test_task'

Minitest::TestTask.create

desc 'Get puzzle input from AOC'
task :fetch, :day do |_t, args|
  day = args[:day] || Date.today.day
  PuzzleInput.fetch(day)
end

desc 'Solve the puzzle and save the result'
task :solve, [:day] => :print do |_t, args|
  day = args[:day]
  FileHelper.add_solution_yaml(day)
end

desc 'Print current result to stdout'
task :print, :day do |_t, args|
  day = args[:day]
  day_class = Object.const_get("Day#{day}")

  pp day_class.part_one
  pp day_class.part_two
end

desc 'Bootstrap files for a day'
task :generate, [:day] => :fetch do |_t, args|
  day = args[:day]
  FileHelper.run(day)
end
