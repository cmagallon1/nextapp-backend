class AddBillingIdToAccounts < ActiveRecord::Migration[6.1]
  def change
    add_reference :accounts, :billing, null: false, foreign_key: true
  end
end
