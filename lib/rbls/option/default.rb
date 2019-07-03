module Rbls
  class Option::Default < Option
    def find!
      @command.file_list = Dir.glob('*', base: @command.base_path).map do |path|
        File.new(path)
      end.sort
    end

    def sort!; end

    def format!
      @command.formatted = eval(template, binding)
    end

    def template
      %q{@command.file_list.map(&:filename).join("\t")}
    end
  end
end
