require "test_helper"

class RblsOptionSmallATest < Minitest::Test
  def setup
    @option = Rbls::Option::SmallA.new(Rbls::Command.new({'a' => true}, ASSETS_PATH))
  end

  def test_it_does_find
    @option.find!
    assert @option.command.file_list.length > 0
  end

  def test_it_does_not_sort
    orig = @option.command.file_list.dup
    @option.sort!
    assert orig == @option.command.file_list    
  end
  
  def test_it_does_not_format
    @option.format!
    assert @option.command.formatted == ""
  end
end
