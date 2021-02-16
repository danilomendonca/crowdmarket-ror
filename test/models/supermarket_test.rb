require 'test_helper'

class SupermarketTest < ActiveSupport::TestCase
  test "should not save supermarket without a name" do
    supermarket = build(:supermarket, name: "")
    assert_not supermarket.save, "Saved the supermarket without a name"
  end

  test "should not save supermarket with duplicated name" do
    create(:supermarket, name: "Product 1")
    supermarket = build(:supermarket, name: "Product 1")
    assert_not supermarket.save, "Product saved with duplicated name"
  end
end
