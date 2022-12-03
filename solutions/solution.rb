# Shared utilities for day solutions
class Solution
  def self.number
    to_s.gsub('Day', '')
  end

  def self.input
    PuzzleInput.to_a(number)
  end
end
