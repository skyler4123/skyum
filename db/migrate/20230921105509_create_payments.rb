class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments, id: :uuid do |t|
      t.references :card, null: false, foreign_key: true, type: :uuid
      t.integer :status
      t.timestamps
    end
  end
end
