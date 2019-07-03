module Rbls
  class File
    include Comparable
    attr_reader :path

    def initialize(path)
      @path = path
    end 

    def filename
      @filename ||= ::File.basename(@path)
    end

    def <=>(comp)
      if filename < comp.filename
        -1
      elsif filename > comp.filename
        1
      else
        0
      end
    end

    def stat
     @stat ||= ::File::Stat.new(@path)
    end
  end
end
