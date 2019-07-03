module Rbls
  class Option
    include Finder, Sorter, Formatter
    attr_reader :command

    def initialize(command)
      @command = command
    end 
  end
end
