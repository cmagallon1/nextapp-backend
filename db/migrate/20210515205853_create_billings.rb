class CreateBillings < ActiveRecord::Migration[6.1]
  def change
    create_table :billings do |t|
      t.string :name
      t.string :company
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
