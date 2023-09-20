class CreateBranches < ActiveRecord::Migration[7.0]
  def change
    create_table :branches, id: :uuid do |t|
      t.string :name
      t.integer :established
      t.string :nationality
      t.boolean :is_global_company
      t.integer :status

      t.timestamps
    end
  end
end
