require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test "should not save product without a name" do
    product = Product.new(name: "")
    assert_not product.save, "Saved the product without a name"
  end

  test "should not save product with duplicated name" do
    Product.create(name: "Product 1")
    product = Product.new(name: "Product 1")
    assert_not product.save, "Product saved with duplicated name"
  end

end