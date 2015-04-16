$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rabbit'

require 'minitest/autorun'

class TestRabbit < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Rabbit::VERSION
  end

  # uni to zg converting test
  def test_convert_uni2zg
    assert_equal 'မဂၤလာပါ', Rabbit::Converter.new.uni2zg('မင်္ဂလာပါ')
  end

  # zg to uni converting test
  def test_convert_zg2uni
    assert_equal 'မင်္ဂလာပါ', Rabbit::Converter.new.zg2uni('မဂၤလာပါ')
    assert_equal 'ဘောလုံးကန်တာမှ ကောင်းဦးမယ်', Rabbit::Converter.new.zg2uni('ေဘာလုံးကန္တာမွ ေကာင္းဦးမယ္')
    assert_equal 'မြန်မာလိုပြောမယ်လကွာ', Rabbit::Converter.new.zg2uni('ျမန္မာလိုေျပာမယ္လကြာ')
  end
end
