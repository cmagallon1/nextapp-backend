class CreateThirdPartyTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :third_party_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
