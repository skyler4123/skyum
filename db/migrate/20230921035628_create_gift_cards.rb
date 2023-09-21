class CreateGiftCards < ActiveRecord::Migration[7.0]
  def change
    create_table :gift_cards, id: :uuid do |t|
      t.string :qr_code
      t.references :shop, null: false, foreign_key: true, type: :uuid
      t.integer :status
      t.integer :amount
      t.datetime :used_at
      t.datetime :expire_at

      t.timestamps
    end
  end
end
