module Rbls
  class Option
    include Finder, Sorter, Formatter

    def initialize(base)
      @base      = base
      @file_list = []
    end 
  end
end
