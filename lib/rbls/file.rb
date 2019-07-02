module Rbls
  class File
    attr_reader :path

    def initialize(path)
      @path = path
    end 

    def filename
      @filename ||= ::File.basename(@path)
    end

    def stat
     @stat ||= ::File::Stat.new(@path)
    end
  end
end
