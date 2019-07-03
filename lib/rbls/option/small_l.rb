module Rbls
  class Option::SmallL < Option
    # do nothing
    def find!; end
    def sort!; end

    def format!
      @command.formatted = eval(template, binding)
    end
  
    def template
      # TODO
      %q{@command.file_list.map(&:filename).join("\t")}
    end
  end
end
