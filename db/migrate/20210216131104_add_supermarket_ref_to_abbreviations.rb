class AddSupermarketRefToAbbreviations < ActiveRecord::Migration[6.0]
  def change
    add_reference :abbreviations, :supermarket, null: false, foreign_key: true
  end
end
