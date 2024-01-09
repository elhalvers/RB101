# frozen_string_literal: true

NUMBERS = [1, 2, 3].freeze

def test
  NUMBERS << 4
end

test
p NUMBERS
