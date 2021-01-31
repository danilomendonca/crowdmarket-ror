class AddSupermarketRefToProductPrices < ActiveRecord::Migration[6.0]
  def change
    add_reference :product_prices, :supermarket, null: false, foreign_key: true
  end
end
