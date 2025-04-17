require 'minitest/autorun'
require_relative '../lib/convert_hash_syntax'

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax # rubocop:disable Metrics/MethodLength
    input = <<~TEXT
      {
        :name => 'Alice',
        :age => 30,
        :gender => :femele
      }
    TEXT

    expected = <<~TEXT
      {
        name: 'Alice',
        age: 30,
        gender: :femele
      }
    TEXT

    assert_equal expected, convert_hash_syntax(input)
  end
end
