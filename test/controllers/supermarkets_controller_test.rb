require 'test_helper'

class SupermarketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supermarket = build(:supermarket)
  end

  test "should get index" do
    get supermarkets_url
    assert_response :success
  end

  test "should get new" do
    get new_supermarket_url
    assert_response :success
  end

  test "should create supermarket" do
    assert_difference('Supermarket.count') do
      post supermarkets_url, params: { supermarket: { name: @supermarket.name } }
    end

    assert_redirected_to supermarket_url(Supermarket.last)
  end

  test "should show supermarket" do
    @supermarket.save
    get supermarket_url(@supermarket)
    assert_response :success
  end

  test "should get edit" do
    @supermarket.save
    get edit_supermarket_url(@supermarket)
    assert_response :success
  end

  test "should update supermarket" do
    @supermarket.save
    patch supermarket_url(@supermarket), params: { supermarket: { name: @supermarket.name } }
    assert_redirected_to supermarket_url(@supermarket)
  end

  test "should destroy supermarket" do
    @supermarket.save
    assert_difference('Supermarket.count', -1) do
      delete supermarket_url(@supermarket)
    end

    assert_redirected_to supermarkets_url
  end
end
