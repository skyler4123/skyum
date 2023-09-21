class CreatePaymentPartners < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_partners, id: :uuid do |t|
      t.string :name

      t.timestamps
    end
  end
end
