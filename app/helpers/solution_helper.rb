# frozen_string_literal: true

# Shared utilities for day solutions
module SolutionHelper
  def number
    to_s.gsub('Day', '')
  end

  def input
    PuzzleInput.to_a(number)
  end
end
