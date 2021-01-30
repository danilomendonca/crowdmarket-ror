class CreateProductPrices < ActiveRecord::Migration[6.0]
  def change
    create_table :product_prices do |t|
      t.decimal :price, null: false

      t.timestamps
    end
  end
end
