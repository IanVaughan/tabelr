require 'json'
require_relative '../lib/tabelr/table_formater'

module Tabelr
  class << self

    def convert json
      TableFormator.new.convert json
    end

  end
end
