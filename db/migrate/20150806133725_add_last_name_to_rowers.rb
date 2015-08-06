class AddLastNameToRowers < ActiveRecord::Migration
  def change
    add_column :rowers, :last_name, :string
    rename_column :rowers, :name, :first_name
  end
end
