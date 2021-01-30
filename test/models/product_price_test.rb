require 'test_helper'

class ProductPriceTest < ActiveSupport::TestCase
  
  test "should not save product_price without a price" do
    product_price = build(:product_price, price: nil)
    assert_not product_price.save, "Saved the product_price without a price"
  end

  test "should not save product_price without a valid category" do
    product_price = build(:product_price, price: nil)
    assert_not product_price.save, "Saved the product_price without a price"
  end

end
