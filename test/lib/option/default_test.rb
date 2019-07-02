require "test_helper"

class RblsOptionDefaultTest < Minitest::Test
  def setup
    @option = Rbls::Option::Default.new(ASSETS_PATH)
  end
  
  def test_it_format
    @option.find!
    assert @option.format == %Q{b.txt\ta.txt}
  end
end
