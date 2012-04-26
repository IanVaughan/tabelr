require "test/unit"
require_relative '../lib/tabelr'

class TestTabelr < Test::Unit::TestCase
  def test_file
    ARGV[0] = 'test/example.json'
    ARGV[1] = 'test/test.run'
    Tabelr.run
    assert_equal File.read('test/output.txt'), File.read(ARGV[1])
    File.delete ARGV[1]
  end
end
