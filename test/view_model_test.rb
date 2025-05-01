require "test_helper"

class ViewModelTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ViewModel::VERSION
  end
end
