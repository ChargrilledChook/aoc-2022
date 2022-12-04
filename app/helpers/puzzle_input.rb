# frozen_string_literal: true

require 'net/http'
require 'uri'
require 'yaml'

# Download puzzle input from AOC site. Need a session token in .config.yml
class PuzzleInput
  BASE_URI = 'https://adventofcode.com/2022/day/'

  def self.fetch(day)
    session = YAML.load_file('.config.yml')['session']
    uri = URI(BASE_URI + "#{day}/input")

    File.open("inputs/#{day}.txt", 'w+') do |f|
      f << Net::HTTP.get(uri, { cookie: session })
    end
  end

  def self.to_a(day)
    File.readlines("inputs/#{day}.txt", "\n", chomp: true)
  end
end
