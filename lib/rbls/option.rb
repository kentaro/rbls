module Rbls
  class Option
    include Finder, Sorter, Formatter
    attr_reader :file_list, :formatted

    def initialize(base)
      @base      = base
      @file_list = []
      @formatted = ""
    end 
  end
end
