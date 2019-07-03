module Rbls
  class Option::SmallA < Option
    def find!
      @command.file_list = Dir.glob('*', ::File::FNM_DOTMATCH, base: @command.base_path).map do |path|
        File.new(path)
      end.sort
    end

    # do nothing
    def sort!;   end
    def format!; end
  end
end
