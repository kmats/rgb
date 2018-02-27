require 'minitest/autorun'
require 'minitest-power_assert'
require './lib/rgb'

class RgbTest < Minitest::Test
  def test_to_hex
    assert { '#000000' == to_hex(  0,   0,   0) }
    assert { '#ffffff' == to_hex(255, 255, 255) }
    assert { '#043c78' == to_hex(  4,  60, 120) }
  end

  def test_to_ints
    assert { [  0,   0,   0] == to_ints('#000000') }
    assert { [255, 255, 255] == to_ints('#ffffff') }
    assert { [  4,  60, 120] == to_ints('#043c78') }
  end
end
