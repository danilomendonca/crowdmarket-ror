require 'test_helper'

class AbbreviationTest < ActiveSupport::TestCase
  test "should not save abbreviation without a name" do
    abbreviation = build(:abbreviation, name: "")
    assert_not abbreviation.save, "Saved the abbreviation without a name"
  end

  test "should not save abbreviation from the same supermarket/product with duplicated name" do
    abbreviation_1 = create(:abbreviation, name: "Abbreviation 1")
    abbreviation_2 = build(:abbreviation, name: "Abbreviation 1", supermarket: abbreviation_1.supermarket, product: abbreviation_1.product)
    assert_not abbreviation_2.save, "Abbreviation from the same supermarket/product saved with duplicated name"
  end

  test "should save abbreviation from a different supermarket/product with duplicated name" do
    abbreviation_1 = create(:abbreviation, name: "Abbreviation 1")
    abbreviation_2 = build(:abbreviation, name: "Abbreviation 1")
    assert abbreviation_2.save, "Abbreviation from different supermarket/product not saved with duplicated name"
  end

  test "should not save abbreviation without a valid supermarket" do
    abbreviation = build(:abbreviation)
    abbreviation.supermarket = nil
    assert_not abbreviation.save, "Abbreviation saved without a valid supermarket"
  end

  test "should not save abbreviation without a valid product" do
    abbreviation = build(:abbreviation)
    abbreviation.product = nil
    assert_not abbreviation.save, "Abbreviation saved without a valid supermarket"
  end
end
