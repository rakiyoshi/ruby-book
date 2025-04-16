require 'minitest/autorun'
require_relative '../lib/rgb'

class RgbTest < Minitest::Test
  def test_to_hex
    assert_equal '#000000', to_hex(0, 0, 0)
    assert_equal '#FFFFFF', to_hex(255, 255, 255)
    assert_equal '#FF5733', to_hex(255, 87, 51)
  end

  def test_to_ints
    assert_equal [0, 0, 0], to_ints('#000000')
    assert_equal [255, 255, 255], to_ints('#FFFFFF')
    assert_equal [255, 87, 51], to_ints('#FF5733')
  end
end
