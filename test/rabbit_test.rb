$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rabbit'

require 'minitest/autorun'
require 'json'

class TestRabbit < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::Rabbit::VERSION
  end

  # uni to zg converting test
  def test_convert_uni2zg
    converter = Rabbit::Converter.new
    parsed = JSON.parse(File.read("test/sample.json"))
    parsed["zg"].each_with_index do |zg_string, index|
      assert_equal zg_string, converter.uni2zg(parsed["uni"][index])
    end
  end

  # zg to uni converting test
  def test_convert_zg2uni
    converter = Rabbit::Converter.new
    parsed = JSON.parse(File.read("test/sample.json"))
    parsed["uni"].each_with_index do |uni_string, index|
      assert_equal uni_string, converter.zg2uni(parsed["zg"][index])
    end
  end
end
