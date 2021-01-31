require 'test_helper'

class ProductPriceTest < ActiveSupport::TestCase
  
  test "should not save product_price without a price" do
    product_price = build(:product_price, price: nil)
    assert_not product_price.save, "Saved the product_price without a price"
  end

  test "should not save product_price without validated field" do
    product_price = build(:product_price, validated: nil)
    assert_not product_price.save, "Saved the product_price without validated field"
  end

  test "should not save product_price without a supermarket" do
    product_price = build(:product_price, supermarket: nil)
    assert_not product_price.save, "Saved the product_price without a supermarket"
  end

  test "should not save product_price without a product" do
    product_price = build(:product_price, product: nil)
    assert_not product_price.save, "Saved the product_price without a product"
  end

end
