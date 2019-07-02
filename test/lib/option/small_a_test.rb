require "test_helper"

class RblsOptionSmallATest < Minitest::Test
  def setup
    @option = Rbls::Option::SmallA.new(ASSETS_PATH)
  end
  
  def test_it_format
    @option.find!
    assert @option.format == %Q{.\t..\tb.txt\ta.txt}
  end
end
