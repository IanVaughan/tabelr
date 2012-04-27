require 'json'
require_relative '../lib/tabelr/table_formater'

module Tabelr
  class << self

    def run
      args = parse_args
      return unless valid? args

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

    def valid? args
      if args[0].nil?
        puts "Man, you gotta give me a file to read from!"
        return
      end
      unless File.exist?(args[0])
        puts "Man, you gotta give me a valid file to read from!"
        return
      end
      true
    end

  end
end
