class AddProductRefToProductPrices < ActiveRecord::Migration[6.0]
  def change
    add_reference :product_prices, :product, null: false, foreign_key: true
  end
end
