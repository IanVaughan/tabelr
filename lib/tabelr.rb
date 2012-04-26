require 'json'
require './lib/tabelr/table_formater'

module Tabelr
  class << self

    def run
      args = parse_args
      @tf = TableFormator.new

      json = JSON.parse(File.read(args[0]))
      output = STDOUT
      output = File.open(args[1], 'w') unless args[1].nil?

      @tf.go json, output
    end

    def parse_args
      commands = []
      ARGV.each do |arg|
        commands << arg unless arg.index('-') === 0
      end
      commands
    end

  end
end
