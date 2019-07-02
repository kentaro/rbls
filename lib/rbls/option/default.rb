module Rbls
  class Option::Default < Option
    def template
      %q{@file_list.map(&:filename).join("\t")}
    end
  end
end
