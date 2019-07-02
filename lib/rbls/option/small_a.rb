module Rbls
  class Option::SmallA < Option
    def find!
      @file_list = Dir.glob('*', ::File::FNM_DOTMATCH, base: @base).map do |path|
        File.new(path)
      end
    end

    def template
      %q{@file_list.map(&:filename).join("\t")}
    end
  end
end
