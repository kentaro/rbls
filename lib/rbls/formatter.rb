module Rbls
  module Formatter
    def format
      eval(template, binding)
    end

    def template
      raise 'should be implemented in a class.'
    end
  end
end
