module Rbls
  class Option::SmallL < Option
    # do nothing
    def find!; end
    def sort!; end

    def format!
      @formatted = eval(template, binding)
    end
  
    def template
      # TODO
      %q{@file_list.map(&:filename).join("\t")}
    end
  end
end
