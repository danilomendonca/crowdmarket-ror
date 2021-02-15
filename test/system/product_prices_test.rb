require "application_system_test_case"

class ProductPricesTest < ApplicationSystemTestCase
  setup do
    @product_price = build(:product_price)
  end

  test "visiting the index" do
    visit product_prices_url
    assert_selector "h1", text: "Product Prices"
  end

  test "creating a Product price" do
    @product = create(:product)
    @product_price.supermarket.save
    visit product_prices_url
    click_on "New Product Price"
    select(@product.name, from: "product_price_product_id")
    select(@product_price.supermarket.name, from: "product_price_supermarket_id")
    fill_in "Price", with: @product_price.price
    click_on "Create Product price"

    assert_text "Product price was successfully created"
    click_on "List"
  end

  test "updating a Product price" do
    @product = create(:product)
    @product_price.supermarket.save
    @product_price.save
    visit product_prices_url
    click_on "Edit", match: :first

    select(@product_price.supermarket.name, from: "product_price_supermarket_id")
    fill_in "Price", with: @product_price.price
    click_on "Update Product price"

    assert_text "Product price was successfully updated"
    click_on "List"
  end

  test "destroying a Product price" do
    @product_price.save
    visit product_prices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product price was successfully destroyed"
  end
end
