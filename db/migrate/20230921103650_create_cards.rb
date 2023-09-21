class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards, id: :uuid do |t|
      t.string :qr_code
      t.references :branch, null: false, foreign_key: true, type: :uuid
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.integer :status
      t.decimal :amount
      t.datetime :used_at
      t.datetime :expire_at

      t.timestamps
    end
  end
end
