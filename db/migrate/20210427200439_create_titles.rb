class CreateTitles < ActiveRecord::Migration[6.1]
  def change
    create_table :titles do |t|
      t.string :name
      t.boolean :thirdParty
      t.boolean :borrower
      t.boolean :lender

      t.timestamps
    end
  end
end
