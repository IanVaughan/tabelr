module Tabelr
  class TableFormator

    def initialize
      @lines = []
      @line = []
    end

    def go json, output
      parse json
      analyse
      dump output
    end

    def stash data
      @line << data
    end

    def bank
      @lines << @line.dup
      @line.clear
    end

    def parse json
      # header
      json['data'].first.each_key { |key| stash key }
      bank

      # content/row
      json['data'].each do |line|
        line.each_value { |value| stash value }
        bank
      end
    end

    def analyse
      @max_len = []
      @lines.each do |line|
        line.each_with_index do |item, i|
          @max_len[i] = max @max_len[i], item.to_s.length
        end
      end
    end

    def dump output
      output.printf divider
      @lines.each_with_index do |line, index|
        output.printf divider if index == 1
        line.each_with_index do |item, i|
          output.printf format item.to_s, @max_len[i]
        end
        output.printf "|\n"
      end
      output.printf divider
      output.flush
    end

    def max a, b
      return a if b.nil?
      return b if a.nil?
      return a if a > b
      b
    end

    def format text, count
      "| #{text} " + " " * (count-text.length)
    end

    def divider
      s = "+"
      @max_len.each { |n| s += "-" * (n+2) + "+" }
      s += "\n"
    end

  end
end
