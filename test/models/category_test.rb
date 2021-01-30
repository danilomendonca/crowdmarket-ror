require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  test 'should not save category without a name' do
    category = build(:category, name: '')
    assert_not category.save, 'Saved the category without a name'
  end

  test 'should not save category with duplicated name' do
    create(:category, name: 'Category 1')
    category = build(:category, name: 'Category 1')
    assert_not category.save, 'Category saved with duplicated name'
  end

end
