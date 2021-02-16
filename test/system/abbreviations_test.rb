require "application_system_test_case"

class AbbreviationsTest < ApplicationSystemTestCase
  setup do
    @abbreviation = build(:abbreviation)
  end

  test "visiting the index" do
    visit abbreviations_url
    assert_selector "h1", text: "Abbreviations"
  end

  test "creating a Abbreviation" do
    @supermarket = create(:supermarket)
    @product = create(:product)
    visit abbreviations_url
    click_on "New Abbreviation"

    fill_in "Name", with: @abbreviation.name
    select(@supermarket.name, from: "abbreviation_supermarket_id")
    select(@product.name, from: "abbreviation_product_id")
    click_on "Create Abbreviation"

    assert_text "Abbreviation was successfully created"
    click_on "Back"
  end

  test "updating a Abbreviation" do
    @abbreviation.save
    visit abbreviations_url
    click_on "Edit", match: :first

    fill_in "Name", with: @abbreviation.name
    click_on "Update Abbreviation"

    assert_text "Abbreviation was successfully updated"
    click_on "Back"
  end

  test "destroying a Abbreviation" do
    @abbreviation.save
    visit abbreviations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Abbreviation was successfully destroyed"
  end
end
