require "test_helper"

class RblsFileTest < Minitest::Test
  def test_it_has_attr_readers
    file = Rbls::File.new(__FILE__)
    assert file.respond_to? :filename
  end
end
