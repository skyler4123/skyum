class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products, id: :uuid do |t|
      t.string :name
      t.decimal :unit_price
      t.references :branch, null: false, foreign_key: true, type: :uuid
      t.references :shop, null: false, foreign_key: true, type: :uuid
      t.references :category, null: false, foreign_key: true, type: :uuid
      t.integer :status

      t.timestamps
    end
  end
end
