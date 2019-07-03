module Rbls
  class Option::Default < Option
    def find!
      @file_list = Dir.glob('*', base: @base).map do |path|
        File.new(path)
      end
    end

    def sort!
      # do nothing
      @file_list = @file_list
    end

    def format!
      @formatted = eval(template, binding)
    end

    def template
      %q{@file_list.map(&:filename).join("\t")}
    end
  end
end
