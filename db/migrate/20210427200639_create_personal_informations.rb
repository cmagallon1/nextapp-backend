class CreatePersonalInformations < ActiveRecord::Migration[6.1]
  def change
    create_table :personal_informations do |t|
      t.string :email
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :mobile_phone
      t.string :direct_phone

      t.timestamps
    end
  end
end
