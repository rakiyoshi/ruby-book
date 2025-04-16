def to_hex(red, geen, blue)
  [red, geen, blue].sum('#') do |color|
    color.to_s(16).rjust(2, '0').upcase
  end
end

def to_ints(hex) = hex.scan(/\w\w/).map(&:hex)
