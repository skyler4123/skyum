class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments, id: :uuid do |t|
      t.decimal :total_amount
      t.references :gift_card, foreign_key: true, type: :uuid
      t.string :remain_amount
      t.references :order, null: false, foreign_key: true, type: :uuid
      t.integer :status
      t.boolean :is_cod_payment
      t.references :payment_partner, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
