module Rbls
  class Option::SmallA < Option
    def find!
      @file_list = Dir.glob('*', ::File::FNM_DOTMATCH, base: @base).map do |path|
        File.new(path)
      end
    end

    # do nothing
    def sort!;   end
    def format!; end
  end
end
