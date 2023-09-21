class CreateOrderProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :order_products, id: :uuid do |t|
      t.references :order, null: false, foreign_key: true, type: :uuid
      t.references :product, null: false, foreign_key: true, type: :uuid
      t.integer :status
      t.decimal :unit_price
      t.integer :quantity

      t.timestamps
    end
  end
end
