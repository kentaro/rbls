module Rbls
  module Finder
    def find!
      @file_list = Dir.glob('*', base: @base).map do |path|
        File.new(path)
      end
    end
  end
end
