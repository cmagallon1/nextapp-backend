class AddCodeToTitles < ActiveRecord::Migration[6.1]
  def change
    add_column :titles, :code, :string
  end
end
