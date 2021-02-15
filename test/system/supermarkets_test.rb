require "application_system_test_case"

class SupermarketsTest < ApplicationSystemTestCase
  setup do
    @supermarket = create(:supermarket)
  end

  test "visiting the index" do
    visit supermarkets_url
    assert_selector "h1", text: "Supermarkets"
  end

  test "creating a Supermarket" do
    visit supermarkets_url
    click_on "New Supermarket"

    fill_in "Name", with: create(:supermarket).name
    click_on "Create Supermarket"

    assert_text "Supermarket was successfully created"
    click_on "List"
  end

  test "updating a Supermarket" do
    visit supermarkets_url
    click_on "Edit", match: :first

    fill_in "Name", with: @supermarket.name
    click_on "Update Supermarket"

    assert_text "Supermarket was successfully updated"
    click_on "List"
  end

  test "destroying a Supermarket" do
    visit supermarkets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Supermarket was successfully destroyed"
  end
end
