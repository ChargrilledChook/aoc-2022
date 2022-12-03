# frozen_string_literal: true

require_relative 'main'

desc 'Get puzzle input from AOC'
task :fetch, :day do |_t, args|
  day = args[:day] || Date.today.day
  PuzzleInput.fetch(day)
end

desc 'Solve the puzzle and save the result'
task :solve, :day do |_t, args|
  day = args[:day]
  data = YAML.load_file 'solutions.yaml'
  day_class = Object.const_get("Day#{day}")

  data["day#{day}"]['part_one'] = day_class.part_one
  data["day#{day}"]['part_two'] = day_class.part_two

  File.open('solutions.yaml', 'w') { |f| YAML.dump(data, f) }
end

desc 'Print current result to stdout'
task :print, :day do |_t, args|
  day = args[:day]
  day_class = Object.const_get("Day#{day}")

  pp day_class.part_one
  pp day_class.part_two
end
