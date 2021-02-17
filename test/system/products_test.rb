require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = build(:product)
  end

  test "visiting the index" do
    @product.save
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "visiting a product's page" do
    @product.save
    visit product_url(@product)
    assert_selector "h1", text: @product.name
  end

  test "creating a Product" do
    @category = create(:category)
    @product.brand.save
    visit products_url
    click_on "New Product"

    fill_in "Name", with: @product.name
    select(@category.name, from: "product_category_id")
    select(@product.brand.name, from: "product_brand_id")

    check "Validated" if @product.validated
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "List"
  end

  test "updating a Product" do
    @product.save
    @product.brand.save
    visit products_url
    click_on "Edit", match: :first

    fill_in "Name", with: @product.name
    select(@product.brand.name, from: "product_brand_id")

    check "Validated" if @product.validated
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "List"
  end

  test "destroying a Product" do
    @product.save
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end

  test "adding a price to a product" do
    @product.save
    @supermarket = create(:supermarket)
    visit product_url(@product)
    assert_selector "div", text: @product.name
    click_on 'Add Price'

    select(@supermarket.name, from: "product_price_supermarket_id")
    fill_in "Price", with: 2.50
    click_on 'Create Product price'

    assert_text "Product price was successfully created"
  end
end
