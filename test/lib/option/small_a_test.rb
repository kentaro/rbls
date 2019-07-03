require "test_helper"

class RblsOptionSmallATest < Minitest::Test
  def setup
    @option = Rbls::Option::SmallA.new(ASSETS_PATH)
  end

  def test_it_does_find
    @option.find!
    assert @option.file_list.length > 0
  end

  def test_it_does_not_sort
    orig = @option.file_list.dup
    @option.sort!
    assert orig == @option.file_list    
  end
  
  def test_it_does_not_format
    @option.format!
    assert @option.formatted == ""
  end
end
