class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops, id: :uuid do |t|
      t.string :name
      t.references :shop_owner, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
