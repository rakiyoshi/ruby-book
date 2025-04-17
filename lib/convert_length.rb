UNITS = { m: 1.0, ft: 3.28, in: 39.37 }.freeze

# Converts a length from one unit to another.
#
# @param length [Numeric] The length to be converted.
# @param from [Symbol] The unit of the input length. Defaults to :m (meters).
#   Supported units: :m (meters), :ft (feet), :in (inches).
# @param to [Symbol] The unit of the output length. Defaults to :m (meters).
#   Supported units: :m (meters), :ft (feet), :in (inches).
# @return [Float] The converted length, rounded to two decimal places.
def convert_length(length, from: :m, to: :m)
  (length / UNITS[from] * UNITS[to]).round(2)
end
