require "test_helper"

class RblsOptionSmallLTest < Minitest::Test
  def setup
    @option = Rbls::Option::SmallL.new(Rbls::Command.new({'l' => true}, ASSETS_PATH))
  end

  def test_it_does_not_find
    @option.find!
    assert @option.command.file_list.length == 0
  end

  def test_it_does_not_sort
    orig = @option.command.file_list.dup
    @option.sort!
    assert orig == @option.command.file_list    
  end
  
  def test_it_does_format
    @option.format!
    assert @option.command.formatted == ""
  end
end
