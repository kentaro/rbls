require "test_helper"

class RblsFileTest < Minitest::Test
  def setup
    @file = Rbls::File.new(__FILE__)
  end
  
  def test_it_has_attr_readers
    assert @file.respond_to? :path
  end

  def test_it_has_filename
    assert @file.respond_to? :filename
    assert @file.filename == File.basename(__FILE__)
  end

  def test_it_has_file_stat
    assert @file.respond_to? :stat
    assert @file.stat.class == File::Stat
  end
end
