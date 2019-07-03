module Rbls
  class Option::SmallR < Option
    # do nothing
    def find!; end
    def format!; end

    def sort!
      @file_list.reverse!
    end
  end
end
