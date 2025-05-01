require "test_helper"

class ProductTest < ActiveSupport::TestCase
  def test_attribute
    product = products(:one)
    assert_equal "First product", product.name
  end
end
