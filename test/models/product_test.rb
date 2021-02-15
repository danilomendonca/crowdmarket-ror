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

  test "should not save product without validated field" do
    product = build(:product, validated: nil)
    assert_not product.save, "Saved the product without validated field"
  end

  test "should not save product without a valid category" do
    product = build(:product_without_category)
    assert_not product.save, "Product saved without a valid category"
  end

  test "should not save product without a valid brand" do
    product = build(:product)
    product.brand = nil
    assert_not product.save, "Product saved without a valid brand"
  end

end