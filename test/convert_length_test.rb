require 'minitest/autorun'
require_relative '../lib/convert_length'

class ConvertLengthTest < Minitest::Test
  def test_convert_length
    assert_equal 1.0, convert_length(1, from: :m, to: :m)
    assert_equal 39.37, convert_length(1, from: :m, to: :in)
    assert_equal 3.28, convert_length(1, from: :m, to: :ft)
    assert_equal 0.03, convert_length(1, from: :in, to: :m)
    assert_equal 0.08, convert_length(1, from: :in, to: :ft)
    assert_equal 0.3, convert_length(1, from: :ft, to: :m)
    assert_equal 12.0, convert_length(1, from: :ft, to: :in)
  end
end
