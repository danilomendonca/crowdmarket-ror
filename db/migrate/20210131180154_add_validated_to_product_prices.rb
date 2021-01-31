class AddValidatedToProductPrices < ActiveRecord::Migration[6.0]
  def change
    add_column :product_prices, :validated, :boolean, null: false, default: false
  end
end
