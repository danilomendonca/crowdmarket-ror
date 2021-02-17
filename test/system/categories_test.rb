require "application_system_test_case"

class CategoriesTest < ApplicationSystemTestCase
  setup do
    @category = build(:category)
  end

  test "visiting the index" do
    visit categories_url
    assert_selector "h1", text: "Categories"
  end

  test "creating a Category" do
    visit categories_url
    click_on "New Category"

    fill_in "Name", with: @category.name
    check "Validated" if @category.validated
    click_on "Create Category"

    assert_text "Category was successfully created"
    click_on "List"
  end

  test "updating a Category" do
    @category.save
    visit categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @category.name
    check "Validated" if @category.validated
    click_on "Update Category"

    assert_text "Category was successfully updated"
    click_on "List"
  end

  test "destroying a Category" do
    @category.save
    visit categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Category was successfully destroyed"
  end

  test "adding a product to a category" do
    @category.save
    @brand = create(:brand)
    visit category_url(@category)
    assert_selector "p", text: @category.name
    click_on 'Add Product'
    fill_in "Name", with: build(:product).name
    select(@brand.name, from: "product_brand_id")
    binding.pry
    click_on 'Create Product'

    assert_text "Product was successfully created"
  end
end
