require "test/unit"
require 'stringio'
require_relative '../lib/tabelr'

class TestTabelr < Test::Unit::TestCase

  def test_output
    stdout_orig = $stdout
    $stdout = StringIO.new
    yield if block_given?
    result = $stdout.string.dup
    $stdout = stdout_orig
    result
  end

  # run

  def test_run
    ARGV[0] = 'test/example.json'
    result = test_output do
      Tabelr.run
    end
    assert_equal File.read('test/example.txt'), result
  end

  # #parse-args

  def test_parse_args_no_args
    ARGV.clear
    result = Tabelr.parse_args
    assert_equal [], result
  end

  def test_parse_args_one_arg
    ARGV[0] = ''
    result = Tabelr.parse_args
    assert_equal [''], result
  end

  # valid

  def test_valid_with_no_args
    result = test_output do
      Tabelr.valid? nil
    end
    assert_equal "Man, you gotta give me a file to read from!\n", result
  end

  def test_valid_one_invalid_arg
    result = test_output do
      Tabelr.valid? ['']
    end
    assert_equal "Man, you gotta give me a valid file to read from!\n", result
  end

  def test_valid_with_one_valid_arg
    result = test_output do
      Tabelr.valid? [__FILE__]
    end
    assert_equal "", result
  end

end
