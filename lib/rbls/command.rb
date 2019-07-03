module Rbls
  class Command
    OPTS_MAP = {
        'a' => Rbls::Option::SmallA,
        'l' => Rbls::Option::SmallL,
        'r' => Rbls::Option::SmallR,
    }

    attr_accessor :base_path, :file_list, :formatted

    def initialize(opts, base_path='.')
      @opts      = opts
      @base_path = base_path
      @file_list = []
      @formatted = ""
    end 

    def options
      @options ||= @opts.reduce([Rbls::Option::Default.new(self)]) do |r, a|
        if a.last && OPTS_MAP[a.first]
          r << OPTS_MAP[a.first].new(self)
        end
        r
      end
    end

    def execute!
      [:find!, :sort!, :format!].each do |m|
        options.each do |o|
          o.send(m)
        end
      end
    end
  end
end
