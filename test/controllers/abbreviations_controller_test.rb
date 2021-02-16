require 'test_helper'

class AbbreviationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @abbreviation = build(:abbreviation)
  end

  test "should get index" do
    get abbreviations_url
    assert_response :success
  end

  test "should get new" do
    get new_abbreviation_url
    assert_response :success
  end

  test "should create abbreviation" do
    @product = create(:product)
    assert_difference('Abbreviation.count') do
      post abbreviations_url, params: { abbreviation: { name: @abbreviation.name, product_id: @product.id } }
    end

    assert_redirected_to abbreviation_url(Abbreviation.last)
  end

  test "should show abbreviation" do
    @abbreviation.save
    get abbreviation_url(@abbreviation)
    assert_response :success
  end

  test "should get edit" do
    @abbreviation.save
    get edit_abbreviation_url(@abbreviation)
    assert_response :success
  end

  test "should update abbreviation" do
    @abbreviation.save
    patch abbreviation_url(@abbreviation), params: { abbreviation: { name: @abbreviation.name, product_id: @abbreviation.product_id } }
    assert_redirected_to abbreviation_url(@abbreviation)
  end

  test "should destroy abbreviation" do
    @abbreviation.save
    assert_difference('Abbreviation.count', -1) do
      delete abbreviation_url(@abbreviation)
    end

    assert_redirected_to abbreviations_url
  end
end
