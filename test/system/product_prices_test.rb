require "application_system_test_case"

class ProductPricesTest < ApplicationSystemTestCase
  setup do
    @product_price = product_prices(:one)
  end

  test "visiting the index" do
    visit product_prices_url
    assert_selector "h1", text: "Product Prices"
  end

  test "creating a Product price" do
    visit product_prices_url
    click_on "New Product Price"

    fill_in "Price", with: @product_price.price
    click_on "Create Product price"

    assert_text "Product price was successfully created"
    click_on "Back"
  end

  test "updating a Product price" do
    visit product_prices_url
    click_on "Edit", match: :first

    fill_in "Price", with: @product_price.price
    click_on "Update Product price"

    assert_text "Product price was successfully updated"
    click_on "Back"
  end

  test "destroying a Product price" do
    visit product_prices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product price was successfully destroyed"
  end
end
