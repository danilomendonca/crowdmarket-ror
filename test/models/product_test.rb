require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test "should not save product without a name" do
    product = build(:product, name: "")
    assert_not product.save, "Saved the product without a name"
  end

  test "should not save product with duplicated name" do
    create(:product, name: "Product 1")
    product = build(:product, name: "Product 1")
    assert_not product.save, "Product saved with duplicated name"
  end

end