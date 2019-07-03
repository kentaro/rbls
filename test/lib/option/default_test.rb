require "test_helper"

class RblsOptionDefaultTest < Minitest::Test
  def setup
    @option = Rbls::Option::Default.new(Rbls::Command.new({}, ASSETS_PATH))
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
  
  def test_it_does_format
    @option.find!
    @option.format!
    assert @option.command.formatted == %Q{a.txt\tb.txt}
  end
end
