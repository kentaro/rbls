module Rbls
  class Option
    include Formatter, Sorter

    def initialize(file_list)
      @file_list = file_list
    end 
  end
end
