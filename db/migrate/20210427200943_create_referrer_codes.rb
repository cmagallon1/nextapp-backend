class CreateReferrerCodes < ActiveRecord::Migration[6.1]
  def change
    create_table :referrer_codes do |t|
      t.string :name

      t.timestamps
    end
  end
end
