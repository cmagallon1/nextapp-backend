class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.references :personal_information, null: false, foreign_key: true
      t.references :title, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.string :nmls
      t.references :referrer_code, null: true, foreign_key: true
      t.integer :paying_manayer_id

      t.timestamps
    end
  end
end
