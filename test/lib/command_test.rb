require "test_helper"

class RblsCommandTest < Minitest::Test
  def setup
    @command = Rbls::Command.new({
        'a' => true,
        'l' => false,
        'r' => true,
    })
  end
  
  def test_it_has_options
    assert @command.respond_to? :options
    assert @command.options.length == 3
  end

  def test_it_does_execute
    @command.execute!
    assert @command.formatted = %Q{b.txt\ta.txt\t..\t.}
  end
end
