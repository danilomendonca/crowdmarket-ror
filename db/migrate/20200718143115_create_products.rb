class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.boolean :validated, default: false

      t.timestamps
    end
  end
end
