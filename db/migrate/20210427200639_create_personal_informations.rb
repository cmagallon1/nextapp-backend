class CreatePersonalInformations < ActiveRecord::Migration[6.1]
  def change
    create_table :personal_informations do |t|
      t.string :email
      t.string :firstName
      t.string :middleName
      t.string :lastName
      t.string :mobilePhone
      t.string :directPhone

      t.timestamps
    end
  end
end
