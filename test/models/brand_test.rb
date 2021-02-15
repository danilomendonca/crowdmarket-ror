require 'test_helper'

class BrandTest < ActiveSupport::TestCase

  test 'should not save brand without a name' do
    brand = build(:brand, name: '')
    assert_not brand.save, 'Saved the brand without a name'
  end

  test 'should not save brand with duplicated name' do
    create(:brand, name: 'Brand 1')
    brand = build(:brand, name: 'Brand 1')
    assert_not brand.save, 'Brand saved with duplicated name'
  end

end
