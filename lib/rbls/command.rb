module Rbls
  class Command
    OPTS_MAP = {
        'a' => Rbls::Option::SmallA,
        'l' => Rbls::Option::SmallL,
        'r' => Rbls::Option::SmallR,
    }

    def initialize(opts, base='.')
      @opts = opts
      @base = base
    end 

    def options
      @options ||= lambda {
        options = @opts.reduce([]) do |r, a|
          if a.last && OPTS_MAP[a.first]
            r << OPTS_MAP[a.first]
          end
          r
        end

        if options.length > 0
          options          
        else
          [Option::None]
        end
      }.call
    end

    def file_list
      @file_list ||= Dir.glob('*', ::File::FNM_DOTMATCH, base: @base)
    end
  end
end
