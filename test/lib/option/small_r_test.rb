require "test_helper"

class RblsOptionSmallRTest < Minitest::Test
  def setup
    @option = Rbls::Option::SmallR.new(ASSETS_PATH)
  end

  def test_it_does_not_find
    @option.find!
    assert @option.file_list.length == 0
  end

  def test_it_does_sort
    orig = @option.file_list.dup.reverse
    @option.sort!
    assert orig == @option.file_list    
  end
  
  def test_it_does_not_format
    @option.format!
    assert @option.formatted == ""
  end
end
