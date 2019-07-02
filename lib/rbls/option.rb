module Rbls
  class Option
    include Formatter
    attr_reader :file_list

    def initialize(file_list)
      @file_list = file_list
    end 

    def sort
      @file_list
    end
  end
end
