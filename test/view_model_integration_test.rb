require "test_helper"

class ViewModelIntegrationTest < ActionDispatch::IntegrationTest
  test "renders viewmodel output in h1" do
    product = products(:one)
    get product_path(product)
    assert_select "h1", product.name
    assert_select "h2", "internal-reference"
  end
end
