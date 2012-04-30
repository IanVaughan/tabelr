require "test/unit"
require_relative '../lib/tabelr/table_formater'
require 'json'

class TestTabelr < Test::Unit::TestCase

  def setup
    @tf = Tabelr::TableFormator.new
    @input = JSON.parse(File.read('test/example.json'))
  end

  def test_no_file
    # ARGV[1] = 'test/test.run'
    output = ''
    @tf.go @input, output
    assert_equal output, File.read('test/example.txt')
  end

  def test_larger_hash
    # ARGV[0] = 'test/example2.json'
    # ARGV[1] = 'test/test.run'
    # Tabelr.run
    # assert_equal File.read('test/example2.txt'), File.read(ARGV[1])
    # File.delete ARGV[1]
  end

  # def test_no_file
  #   Tabelr.run
  #   assert_equal "No file"
  # end
end
