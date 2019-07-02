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
      @options ||= @opts.reduce([Rbls::Option::Default]) do |r, a|
        if a.last && OPTS_MAP[a.first]
          r << OPTS_MAP[a.first]
        end
        r
      end
    end
  end
end
