module Rbls
  module Formatter
    def format
      raise 'should be implemented in a class.'
    end

    def template
      @template ||= DATA.join('').chomp
    end
  end
end
