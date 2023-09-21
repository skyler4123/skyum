class CreateBranches < ActiveRecord::Migration[7.0]
  def change
    create_table :branches, id: :uuid do |t|
      t.string :name
      t.string :nationality
      t.string :area
      t.integer :established
      t.integer :status

      t.timestamps
    end
  end
end
