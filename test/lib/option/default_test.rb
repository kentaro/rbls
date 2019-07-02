require "test_helper"

class RblsOptionDefaultTest < Minitest::Test
  def setup
    @option = Rbls::Option::Default.new(
        [Rbls::File.new(__FILE__)]
    )
  end
  
  def test_it_format
    basename = File.basename(__FILE__)
    assert @option.format == basename
  end
end
